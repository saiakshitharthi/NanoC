#include <bits/stdc++.h>
using namespace std;
#include "tool_functions.cpp"
const int integerSize = 8;
const int charSize = 1;
const int sizeOfRegister = 8;

bool skipInstructions = false;
// R 15 contains the return value from a function.

string currentFunction;
string dataSection = "global _start\nsection .data\n";
string textSection = "section .text\nextern readInt\nextern printInt\nextern printStr\n";
string bssSection = "section .bss\n";
string getHashKey(string, string);
map<string, bool> instructionNeedLabel;
class symbolTableRecord
{
public:
    string name;
    string type;
    string initialValue;
    int size;
    int offset;
    string Offset;
    string nestedTable;
    bool isArray;
    symbolTableRecord()
    {
        isArray = false;
    }
    void printRecord()
    {
        cout << "Name: " << name << endl;
        cout << "Type: " << type << endl;
        cout << "Initial Value: " << initialValue << endl;
        cout << "Size: " << size << endl;
        cout << "Offset: " << offset << endl;
        cout << "Nested Table: " << nestedTable << endl;
    }
};

map<string, symbolTableRecord> symbolDetails;

bool isInSymbolTable(string name)
{
    if (symbolDetails.find(name) != symbolDetails.end())
    {
        return true;
    }
    return false;
}
class functionRecord
{
public:
    string functionName;
    int numberOfArguments;
    vector<symbolTableRecord> parameters;
    string returnType;
    bool hasReturnValue;
    vector<symbolTableRecord> localVariables;
    int sizeOfArguments;
    int curOffset = 0;
    void populateLocalVariables()
    {
        ifstream localSymbolTable(functionName + ".txt");
        if (!localSymbolTable.is_open())
        {
            cout << "Error opening " + functionName + " symbol table" << endl;
            return;
        }
        string line;
        while (getline(localSymbolTable, line))
        {
            vector<string> tokens = tokenizeRecord(line);
            string name = tokens[0];
            string type = tokens[1];
            string initialValue = tokens[2];
            int size = stoi(tokens[3]);
            int offset = stoi(tokens[4]);
            string nestedTable = tokens[5];
            symbolTableRecord record;
            record.name = name;
            record.type = type;
            record.initialValue = initialValue;
            if (type != "CHAR")
            {
                if (size > 4)
                {
                    record.isArray = true;
                }
                size *= 2;
            }
            else
            {
                if (size != 1)
                {
                    record.isArray = true;
                }
                size++;
            }
            record.isArray = tokens[6][0] - '0';
            record.size = size;
            curOffset += size;
            record.offset = curOffset;
            record.nestedTable = nestedTable;
            record.Offset = to_string(offset);
            symbolDetails[getHashKey(name, functionName)] = record;
            localVariables.push_back(record);
        }
    }
    //Handling prologue
    string prologue()
    {
        string command = "\tpush rbp\n";
        command += "\tmov rbp, rsp\n";
        for (int i = 0; i < localVariables.size(); i++)
        {
            command += "\tsub rsp, " + to_string(localVariables[i].size) + "\n";
            if (localVariables[i].type != "CHAR")
            {
                if (i < numberOfArguments)
                {
                    command += "\tmov rax,  [rsp + " + to_string(sizeOfArguments + 2 * sizeOfRegister) + "]\n";
                    command += "\tmov qword  [rsp], rax\n";
                }
                else
                {
                    if (localVariables[i].initialValue[0] != '\"')
                    {
                        command += "\tmov qword  [rsp], " + localVariables[i].initialValue + "\n";
                    }
                }
            }
            else
            {
                if (i < numberOfArguments)
                {
                    command += "\tmov al, byte [rsp + " + to_string(sizeOfArguments + 2 * sizeOfRegister) + "]\n";
                    command += "\tmov byte [rsp], al\n";
                }
                else
                {
                    if (localVariables[i].size)
                    {
                        if (localVariables[i].initialValue[0] != '\"')
                        {
                            command += "\tmov byte [rsp], " + localVariables[i].initialValue + "\n";
                        }
                    }
                }
            }
        }
        return command;
    }
    //Handling epilogue
    string epilogue()
    {
        string command = "\tmov rsp, rbp\n";
        command += "\tpop rbp\n";
        return command;
    }
};
//Data structures
map<string, functionRecord> functionDetails;
//Checks whether this function is inside the function table or not
bool isAFunction(string s)
{
    auto it = functionDetails.find(s);
    return (it != functionDetails.end());
}
//Checks whether the instruction is a global instruction 
bool isGlobalDeclaration(int index, vector<string> &input)
{
    if (input[index] == "ret")
    {
        return false;
    }
    for (int i = index + 1; i < input.size(); i++)
    {
        string temp = input[i];
        if (temp.size() >= 1)
        {
            temp.pop_back();
            if (isAFunction(temp))
            {
                return true;
            }
        }
        if (input[i] == "ret")
        {
            return false;
        }
    }
    return true;
}
//Function to populate Global variables.
void populateGlobalVariables()
{
    ifstream globalSymbolTable("global.txt");
    if (!globalSymbolTable.is_open())
    {
        cout << "Error opening global symbol table" << endl;
        return;
    }
    string line;
    int curOffset = 0;
    while (getline(globalSymbolTable, line))
    {
        stringstream ss(line);
        string name;
        string type;
        string initialValue;
        int size;
        int offset;
        string nestedTable;
        bool isArray;
        ss >> name >> type >> initialValue >> size >> offset >> nestedTable >> isArray;

        auto tokens = breakTypeIntoTokens(type);
        if (tokens.size() == 1)
        {
            symbolTableRecord record;
            record.name = name;
            record.type = type;
            record.initialValue = initialValue;
            if (type != "CHAR")
            {
                if (size > 4)
                {
                    record.isArray = true;
                }
                size *= 2;
            }
            else
            {
                if (size != 1)
                {
                    record.isArray = true;
                }
                size++;
            }
            record.isArray = isArray;
            record.size = size;
            record.offset = curOffset + size;
            curOffset = record.offset;
            record.nestedTable = nestedTable;
            record.Offset = to_string(offset);
            symbolDetails[getHashKey(name, nestedTable)] = record;
        }
        else
        {
            functionRecord record;
            record.functionName = name;
            record.numberOfArguments = 0;
            //Allowed 
            for (int i = 0; i < tokens.size() - 1; i++)
            {
                if (tokens[i] == "CHAR" || tokens[i] == "INT" || tokens[i] == "CHAR*" || tokens[i] == "INT*")
                {
                    record.numberOfArguments++;
                }
            }
            if (tokens.back() == "VOID")
            {
                record.hasReturnValue = false;
            }
            else
            {
                record.hasReturnValue = true;
            }
            record.sizeOfArguments = 0;
            for (int i = 0; i < tokens.size() - 1; i++)
            {

                if (tokens[i] == "CHAR")
                {

                    record.sizeOfArguments += charSize;
                }
                else
                {
                    record.sizeOfArguments += integerSize;
                }
            }
            record.populateLocalVariables();
            functionDetails[name] = record;
        }
    }

    for (auto x : symbolDetails)
    {
        if (getFunctionFromHashKey(x.first) == "null" && x.second.isArray)
        {
            // x.second.printRecord();
            if (x.second.type == "CHAR")
            {
                bssSection += "\t" + x.second.name + "\tresb  " + to_string(x.second.size) + "\n";
            }
            else
            {
                bssSection += "\t" + x.second.name + "\tresq  " + to_string(x.second.size / 8) + "\n";
            }
        }
        else if (getFunctionFromHashKey(x.first) == "null" && x.second.type == "CHAR")
        {
            dataSection += "\t" + x.second.name + " db " + x.second.initialValue + "\n";
        }
        else if (getFunctionFromHashKey(x.first) == "null")
        {
            dataSection += "\t" + x.second.name + " dq " + x.second.initialValue + "\n";
        }
    }
    globalSymbolTable.close();
}

bool storedStackPointerBeforeCall = false;

//Three Address Code class
class ThreeAddressCode
{

public:
    int NumberOfArguments;
    bool isIfOperation;
    bool isReturn;
    bool isFunction;
    bool isGoto;
    bool shouldNeedLabel;
    bool isAddressOperator;
    bool isDerefernceOperator;
    bool isFirstDereferenceOperator;
    bool isSecondDerefenceOperator;

    string instructionNumber;
    string insideFunction;
    string oper;
    string arg1;
    string arg2;
    string result;
    string functionName;
    string commentContent;
    ThreeAddressCode()
    {
        NumberOfArguments = 0;
        isIfOperation = false;
    }

    void getContentToRegister(string &command, string reg, string identifier)
    {
        // cout<<getHashKey(identifier,currentFunction)<<endl;
        if (isInSymbolTable(getHashKey(identifier, currentFunction)) && currentFunction != "null" && currentFunction.size() > 0)
        {

            command += ("\tmov " + reg + ", [ rbp - " + to_string(symbolDetails[getHashKey(identifier, currentFunction)].offset) + "]\n");
        }
        else
        {
            command += ("\tmov " + reg + ", [" + identifier + "]\n");
        }
    }
    void getContentToRegisterByte(string &command, string reg, string identifier)
    {

        if (isInSymbolTable(getHashKey(identifier, currentFunction)) && currentFunction != "null" && currentFunction.size() > 0)
        {

            command += ("\tmov " + reg + ", byte [ rbp - " + to_string(symbolDetails[getHashKey(identifier, currentFunction)].offset) + "]\n");
        }
        else
        {
            command += ("\tmov " + reg + ", byte [" + identifier + "]\n");
        }
    }
    void pushContentFromRegister(string &command, string reg, string identifier)
    {
        if (isInSymbolTable(getHashKey(identifier, currentFunction)))
        {
            command += "\tmov qword  [ rbp - " + to_string(symbolDetails[getHashKey(result, currentFunction)].offset) + " ] , " + reg + "\n";
        }
        else
        {
            command += "\tmov qword  [ " + identifier + " ] , " + reg + "\n";
        }
    }
    void pushContentFromRegisterByte(string &command, string reg, string identifier)
    {
        if (isInSymbolTable(getHashKey(identifier, currentFunction)))
        {
            command += "\tmov qword  [ rbp - " + to_string(symbolDetails[getHashKey(result, currentFunction)].offset) + " ] , " + reg + "\n";
        }
        else
        {
            command += "\tmov byte  [ " + identifier + " ] , " + reg + "\n";
        }
    }
    //Function printing:
    string printNASM()
    {
        //Handled all function Body here.
        if (instructionNeedLabel[instructionNumber])
        {
            shouldNeedLabel = true;
        }
        else
        {
            shouldNeedLabel = false;
        }
        string labelString;

        if (shouldNeedLabel)
        {
            labelString = getLabelName(instructionNumber) + ":\n";
        }
        if (oper == "goto")
        {
            if (result == "(null)")
            {
                return "";
            }
            return commentContent + labelString + "\tjmp " + getLabelName(result) + "\n";
        }
        if (oper == "param")
        {
            string command;

            if (isInSymbolTable(getHashKey(arg1, currentFunction)))
            {
                if (symbolDetails[getHashKey(arg1, currentFunction)].isArray)
                {
                    command += "\tsub rsp, " + to_string(sizeOfRegister) + "\n";
                    command += "\tmov rax, rbp\n";
                    command += "\tsub rax, " + to_string(symbolDetails[getHashKey(arg1, currentFunction)].offset) + "\n";
                    command += "\tmov qword [rsp], rax\n";
                }
                else
                {
                    command += "\tsub rsp, " + to_string(symbolDetails[getHashKey(arg1, currentFunction)].size) + "\n";
                    if (symbolDetails[getHashKey(arg1, currentFunction)].size == integerSize)
                    {
                        command += "\tmov rax,  [rbp - " + to_string(symbolDetails[getHashKey(arg1, currentFunction)].offset) + "]\n";
                        command += "\tmov qword  [rsp], rax\n";
                    }
                    if (symbolDetails[getHashKey(arg1, currentFunction)].size == charSize)
                    {
                        command += "\tmov r15b, byte [rbp - " + to_string(symbolDetails[getHashKey(arg1, currentFunction)].offset) + "]\n";
                        command += "\tmov byte [rsp], r15b\n";
                    }
                }
            }
            else
            {
                if (symbolDetails[getHashKey(arg1, "null")].isArray)
                {
                    command += "\tsub rsp, " + to_string(sizeOfRegister) + "\n";
                    command += "\tmov rax, " + arg1 + "\n";
                    command += "\tmov qword [rsp], rax\n";
                }
                else
                {
                    command += "\tsub rsp, " + to_string(symbolDetails[getHashKey(arg1, "null")].size) + "\n";
                    if (symbolDetails[getHashKey(arg1, "null")].size == integerSize)
                    {
                        command += "\tmov rax, qword [" + arg1 + "]\n";
                        command += "\tmov qword  [rsp], rax\n";
                    }
                    if (symbolDetails[getHashKey(arg1, "null")].size == charSize)
                    {
                        command += "\tmov r15b, byte [" + arg1 + "]\n";
                        command += "\tmov byte [rsp], r15b\n";
                    }
                }
            }
            return commentContent + labelString + command;
        }
        // Labelling function
        if (isFunction)
        {
            if (isIgnorable(functionName))
            {
                skipInstructions = true;
                return "";
            }
            currentFunction = functionName;
            string command = functionName + ":\n";
            command += functionDetails[functionName].prologue();
            return commentContent + labelString + command;
        }
        //Returning function
        if (isReturn)
        {
            if (skipInstructions)
            {
                skipInstructions = false;
                return "";
            }
            skipInstructions = false;
            string command;
            if (NumberOfArguments == 1)
            {
                getContentToRegister(command, "r15", arg1);
            }
            command += functionDetails[insideFunction].epilogue();
            command += "ret\n";
            return commentContent + labelString + command;
        }
        if (skipInstructions)
        {
            return "";
        }
        if (!isIfOperation)
        {
            if (oper == "call")
            {
                // Restoring back the stack pointer as well. Check logic once
                string command = "\tcall " + arg1 + "\n";
                command += "\tmov  [ rbp - " + to_string(symbolDetails[getHashKey(result, currentFunction)].offset) + " ] , r15\n";
                return commentContent + labelString + command;
            }
            if (oper == "=")
            {
                // cases. x = y[z] , x = &y, x = *y,x = y,x = constant,x[z] = y,  *x = y, x = "string", assuming arg1 contains string.
                // *x = y, *(x + 8*z) = y,
                string command = "";

                if (isInSymbolTable(getHashKey(result, currentFunction)) || isInSymbolTable(getHashKey(result, "null")))
                {
                    if (arg1[0] == '*')
                    {
                        getContentToRegister(command, "rbx", arg1.substr(1));
                        command += "\tmov rax, [rbx]\n";
                        pushContentFromRegister(command, "rax", result);
                    }
                    else if (isInSymbolTable(getHashKey(arg1, currentFunction)) || isInSymbolTable(getHashKey(arg1, "null")))
                    {
                        getContentToRegister(command, "rax", arg1);
                        pushContentFromRegister(command, "rax", result);
                    }
                    else if (arg1[0] == '&')
                    {
                        if (isInSymbolTable(getHashKey(arg1.substr(1), currentFunction)) || isInSymbolTable(getHashKey(arg1.substr(1), "null")))
                        {

                            if (isInSymbolTable(getHashKey(arg1.substr(1), currentFunction)))
                            {
                                command += "\tmov rax, rbp\n\tsub rax, " + to_string(symbolDetails[getHashKey(arg1.substr(1), currentFunction)].offset) + "\n";
                            }
                            else
                            {
                                command += "\tmov rax, " + arg1.substr(1) + "\n";
                            }
                            pushContentFromRegister(command, "rax", result);
                        }
                        else
                        {
                            vector<string> identIndex = breakIndexedCopy(arg1.substr(1));
                            if (isInSymbolTable(identIndex[0]))
                            {

                                command += "\tmov rbx, rbp\n\tsub rbx, " + to_string(symbolDetails[getHashKey(identIndex[0], currentFunction)].offset) + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(integerSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                pushContentFromRegister(command, "rax", result);
                            }
                            else
                            {
                                command += "\tmov rbx," + identIndex[0] + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(integerSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                pushContentFromRegister(command, "rax", result);
                            }
                        }
                    }
                    else if (arg1[0] == '!')
                    {
                        getContentToRegister(command, "rax", arg1.substr(1));
                        command += "\tnot rax\n";
                        pushContentFromRegister(command, "rax", result);
                    }
                    else if (arg1[0] == '-')
                    {
                        getContentToRegister(command, "rax", arg1.substr(1));
                        command += "\tneg rax\n";
                        pushContentFromRegister(command, "rax", result);
                    }
                    else if (arg1[0] == '\"')
                    {
                        string stringToBeStored = (arg1.substr(0, arg1.size() - 1)).substr(1);
                        vector<int> allAsciiValues = getAsciiValue(stringToBeStored);
                        allAsciiValues.push_back(0);
                        for (int i = 0; i < allAsciiValues.size(); i++)
                        {
                            command += "\tmov byte [rbp - " + to_string(symbolDetails[getHashKey(result, currentFunction)].offset - i) + "] , " + to_string(allAsciiValues[i]) + "\n";
                        }
                    }
                    else if (arg1[0] == '\'')
                    {
                        // cout<<getHashKey(result,currentFunction)<<endl;
                        if (isInSymbolTable(getHashKey(result, currentFunction)))
                        {

                            command += "\tmov byte [ rbp - " + to_string(symbolDetails[getHashKey(result, currentFunction)].offset) + " ] ," + arg1 + "\n";
                        }
                        else
                        {
                            command += "\tmov byte [" + result + "], " + arg1 + "\n";
                        }
                    }
                    else if (isNumber(arg1))
                    {
                        command += "\tmov rax, " + arg1 + "\n";
                        pushContentFromRegister(command, "rax", result);
                    }
                    else
                    {
                        vector<string> identIndex = breakIndexedCopy(arg1);
                        if (isInSymbolTable(getHashKey(identIndex[0], currentFunction)))
                        {
                            // cout<<getHashKey(result,currentFunction)<<endl;

                            if (symbolDetails[getHashKey(identIndex[0], currentFunction)].type == "CHAR")
                            {
                                command += "\tmov rbx, rbp\n\tsub rbx, " + to_string(symbolDetails[getHashKey(identIndex[0], currentFunction)].offset) + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(charSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                command += "\tmov r15b, byte [rax]\n";
                                // command += "\tmov byte [ rbp - " + to_string(symbolDetails[getHashKey(result, currentFunction)].offset) + " ] ,r15b\n";
                                pushContentFromRegisterByte(command, "r15b", result);
                            }
                            else
                            {
                                command += "\tmov rbx, rbp\n\tsub rbx, " + to_string(symbolDetails[getHashKey(identIndex[0], currentFunction)].offset) + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(integerSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                command += "\tmov rax, [rax]\n";
                                // command += "\tmov qword [ rbp - " + to_string(symbolDetails[getHashKey(result, currentFunction)].offset) + " ] ,rax\n";
                                pushContentFromRegister(command, "rax", result);
                            }
                        }
                        else
                        {
                            if (symbolDetails[getHashKey(identIndex[0], "null")].type == "CHAR")
                            {
                                command += "\tmov rbx," + identIndex[0] + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(charSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                command += "\tmov r15b, byte [rax]\n";
                                pushContentFromRegisterByte(command, "r15b", result);
                            }
                            else
                            {
                                command += "\tmov rbx," + identIndex[0] + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                // cout<<identIndex[1]<<endl;
                                command += "\timul rax," + to_string(integerSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                command += "\tmov rax, [rax]\n";
                                pushContentFromRegister(command, "rax", result);
                            }
                        }
                    }
                }
                else
                {
                    if (result[0] == '*')
                    {
                        if (isInSymbolTable(getHashKey(result.substr(1), currentFunction)) || isInSymbolTable(getHashKey(result.substr(1), "null")))
                        {

                            getContentToRegister(command, "rbx", arg1);
                            getContentToRegister(command, "r15", result.substr(1));
                            command += "\tmov [r15] , rbx\n";
                        }
                        else
                        {
                            vector<string> identIndex = breakIndexedCopy(result.substr(1));
                            if (isInSymbolTable(getHashKey(identIndex[0], currentFunction)))
                            {
                                if (symbolDetails[getHashKey(identIndex[0], currentFunction)].type != "CHAR")
                                {
                                    command += "\tmov rbx, rbp\n\tsub rbx, " + to_string(symbolDetails[getHashKey(identIndex[0], currentFunction)].offset) + "\n";
                                    getContentToRegister(command, "rax", identIndex[1]);
                                    command += "\timul rax," + to_string(integerSize) + "\n";
                                    command += "\tadd rax, rbx\n";
                                    command += "\tmov rax, [rax]\n";
                                    getContentToRegister(command, "rbx", arg1);
                                    command += "\tmov qword [rax], rbx\n";
                                }
                                else
                                {
                                    command += "\tmov rbx, rbp\n\tsub rbx, " + to_string(symbolDetails[getHashKey(identIndex[0], currentFunction)].offset) + "\n";
                                    getContentToRegister(command, "rax", identIndex[1]);
                                    command += "\timul rax," + to_string(charSize) + "\n";
                                    command += "\tadd rax, rbx\n";
                                    command += "\tmov rax, [rax]\n";
                                    getContentToRegisterByte(command, "r15b", arg1);
                                    command += "\tmov byte [rax], r15b\n";
                                }
                            }
                            else
                            {
                                if (symbolDetails[getHashKey(identIndex[0], "null")].type != "CHAR")
                                {
                                    command += "\tmov rbx, " + identIndex[0] + "\n";
                                    getContentToRegister(command, "rax", identIndex[1]);
                                    command += "\timul rax," + to_string(integerSize) + "\n";
                                    command += "\tadd rax, rbx\n";
                                    command += "\tmov rax, [rax]\n";
                                    getContentToRegister(command, "rbx", arg1);
                                    command += "\tmov qword [rax], rbx\n";
                                }
                                else
                                {
                                    command += "\tmov rbx, " + identIndex[0] + "\n";
                                    getContentToRegister(command, "rax", identIndex[1]);
                                    command += "\timul rax," + to_string(charSize) + "\n";
                                    command += "\tadd rax, rbx\n";
                                    command += "\tmov rax, [rax]\n";
                                    getContentToRegisterByte(command, "r15b", arg1);
                                    command += "\tmov byte [rax], r15b\n";
                                }
                            }
                        }
                    }
                    else
                    {
                        vector<string> identIndex = breakIndexedCopy(result);
                        if (isInSymbolTable(getHashKey(identIndex[0], currentFunction)))
                        {
                            if (symbolDetails[getHashKey(identIndex[0], currentFunction)].type != "CHAR")
                            {
                                command += "\tmov rbx, rbp\n\tsub rbx, " + to_string(symbolDetails[getHashKey(identIndex[0], currentFunction)].offset) + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(integerSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                getContentToRegister(command, "rbx", arg1);
                                command += "\tmov qword [rax], rbx\n";
                            }
                            else
                            {
                                command += "\tmov rbx, rbp\n\tsub rbx, " + to_string(symbolDetails[getHashKey(identIndex[0], currentFunction)].offset) + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(charSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                getContentToRegisterByte(command, "r15b", arg1);
                                command += "\tmov byte [rax], r15b\n";
                            }
                        }
                        else
                        {
                            if (symbolDetails[getHashKey(identIndex[0], "null")].type != "CHAR")
                            {
                                command += "\tmov rbx, " + identIndex[0] + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(integerSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                getContentToRegister(command, "rbx", arg1);
                                command += "\tmov qword [rax], rbx\n";
                            }
                            else
                            {
                                command += "\tmov rbx, " + identIndex[0] + "\n";
                                getContentToRegister(command, "rax", identIndex[1]);
                                command += "\timul rax," + to_string(charSize) + "\n";
                                command += "\tadd rax, rbx\n";
                                getContentToRegisterByte(command, "r15b", arg1);
                                command += "\tmov byte [rax], r15b\n";
                            }
                        }
                    }
                }

                return commentContent + labelString + command;
            }

            //All Binary Operations:
            if (oper == "+")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tadd rax, rbx\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "-")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tsub rax, rbx\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "*")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\timul rax, rbx\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "/")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tidiv rbx\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "%")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tidiv rbx\n\tmov rax, rdx\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "&&")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\timul rax, rbx\n\tcmp rax, 0\n\tsetne al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "||")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tor rax, rbx\n\tcmp rax, 0\n\tsetne al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == ">")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tsub rax, rbx\n\tcmp rax, 0\n\tsetg al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "<")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tsub rax, rbx\n\tcmp rax, 0\n\tsetl al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == ">=")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tsub rax, rbx\n\tcmp rax, 0\n\tsetge al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "<=")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tsub rax, rbx\n\tcmp rax, 0\n\tsetle al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "==")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tsub rax, rbx\n\tcmp rax, 0\n\tsete al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
            else if (oper == "!=")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tsub rax, rbx\n\tcmp rax, 0\n\tsetne al\n\tmovzx rax, al\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
        }
        else if (isIfOperation)
        {
            if (oper == ">")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tcmp rax, rbx\n\tjg " + getLabelName(result) + "\n";
                return (commentContent + labelString + first + second + third);
            }
            if (oper == "<")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tcmp rax, rbx\n\tjl " + getLabelName(result) + "\n";
                return (commentContent + labelString + first + second + third);
            }
            if (oper == "==")
            {
                // cout << "I am inside operation " << endl;
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tcmp rax, rbx\n\tje " + getLabelName(result) + "\n";
                return (commentContent + labelString + first + second + third);
            }
            if (oper == ">=")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tcmp rax, rbx\n\tjge " + getLabelName(result) + "\n";
                return (commentContent + labelString + first + second + third);
            }
            if (oper == "<=")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tcmp rax, rbx\n\tjle " + getLabelName(result) + "\n";
                return (commentContent + labelString + first + second + third);
            }
            if (oper == "!=")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second;
                getContentToRegister(second, "rbx", arg2);
                string third = "\tcmp rax, rbx\n\tjne " + getLabelName(result) + "\n";
                return (commentContent + labelString + first + second + third);
            }
            // Make sure you give operation as none as well
            if (oper == "none")
            {
                string first;
                getContentToRegister(first, "rax", arg1);
                string second = "\tmov rbx ,  [ rbp - " + to_string(0) + " ]\n";
                string third = "\tcmp rax, rbx\n\tjg " + getLabelName(result) + "\n";
                string fourth;
                pushContentFromRegister(fourth, "rax", result);
                return (commentContent + labelString + first + second + third + fourth);
            }
        }
        // cout<<"I am comment Content" << commentContent<<endl;
        // Removed temp_for_now with blank
        return "temp_for_now\n";
    }
};

//Storing all input code in this vector.
vector<ThreeAddressCode> inputCode;

//Parsing line
void parseLine(string &line)
{
    vector<string> tokens;
    tokens = tokenizeRecord(line);
    ThreeAddressCode instruction;
    instruction.isFunction = false;
    instruction.isReturn = false;
    instruction.isIfOperation = false;
    instruction.NumberOfArguments = 0;
    instruction.shouldNeedLabel = false;
    tokens[0].pop_back();
    instruction.instructionNumber = tokens[0];
    if (tokens.size() == 2)
    {
        // return token 
        if (tokens[1] == "return")
        {
            instruction.isReturn = true;
            instruction.NumberOfArguments = 0;
        }
    }
    else if (tokens.size() == 3)
    {
        if (tokens.back() == ":")
        {
            instruction.functionName = tokens[1];
            instruction.isFunction = true;
            instruction.NumberOfArguments = 0;
            currentFunction = instruction.functionName;
        }
        else if (tokens[1] == "return")
        {
            instruction.isReturn = true;
            instruction.NumberOfArguments = 1;
            instruction.arg1 = tokens[2];
        }
        else if (tokens[1] == "param")
        {
            instruction.oper = "param";
            instruction.NumberOfArguments = 1;
            instruction.arg1 = tokens[2];
        }
        else if (tokens[1] == "goto")
        {
            instruction.isGoto = true;
            instruction.oper = "goto";
            instruction.result = tokens[2];
            instructionNeedLabel[instruction.result] = true;
        }
    }
    else if (tokens.size() == 4)
    {
        if (tokens[2] == "=")
        {
            instruction.oper = tokens[2];
            instruction.result = tokens[1];
            instruction.arg1 = tokens[3];
        }
    }
    else if (tokens.size() == 6)
    {
        if (isBinaryOperator(tokens[4]))
        {

            instruction.oper = tokens[4];
            instruction.arg1 = tokens[3];
            instruction.arg2 = tokens[5];
            instruction.result = tokens[1];
        }
    }
    else if (tokens.size() == 7)
    {
        if (tokens[1] == "if")
        {
            instruction.isIfOperation = true;
            instruction.oper = tokens[3];
            instruction.arg1 = tokens[2];
            instruction.arg2 = tokens[4];
            instruction.result = tokens[6];
            instructionNeedLabel[instruction.result] = true;
        }
        else if (tokens[3] == "call")
        {
            instruction.oper = tokens[3];
            instruction.arg1 = tokens[4];
            instruction.arg2 = tokens[6];
            instruction.result = tokens[1];
        }
    }
    instruction.commentContent = "; " + line + "\n";
    inputCode.push_back(instruction);
}

int main()
{
    ifstream input("three_address_input.txt");
    string line;
    while (getline(input, line))
    {
        parseLine(line);
    }
    populateGlobalVariables();
    // cout << "Done Parsing" << endl;
    ofstream finalMachineCode("final_machine_code.asm");
    textSection += "_start:\n";
    for (auto x : inputCode)
    {
        // cout<<x.printNASM()<<endl;
        textSection += x.printNASM();
    }

    textSection += "\tcall main\n\tmov rax, 60\n\txor rdi, rdi\n\tsyscall\n";

    vector<string> textSectionLines;
    string::size_type start = 0, end = 0;
    while ((end = textSection.find('\n', start)) != std::string::npos)
    {
        textSectionLines.push_back(textSection.substr(start, end - start));
        start = end + 1;
    }
    string GlobalText;
    string FunctionText;
    for (int i = 0; i < textSectionLines.size(); i++)
    {
        if (isGlobalDeclaration(i, textSectionLines))
        {
            GlobalText += textSectionLines[i];
            GlobalText += "\n";
        }
        else
        {
            FunctionText += textSectionLines[i];
            FunctionText += "\n";
        }
    }
    textSection = GlobalText + FunctionText;

    finalMachineCode << dataSection;
    finalMachineCode << bssSection;
    finalMachineCode << textSection;
    
    cout<<dataSection<<bssSection<<textSection;
    input.close();
    return 0;
}