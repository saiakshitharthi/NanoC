#include <bits/stdc++.h>
using namespace std;
string getLabelName(string instructionNumber)
{
    return "label_" + instructionNumber;
}
string getHashKey(string name, string functionName)
{
    return (name + "|" + functionName);
}
string getFunctionFromHashKey(string hashKey)
{
    int index = hashKey.find("|");
    return hashKey.substr(index + 1);
}

vector<string> breakTypeIntoTokens(string type)
{

    vector<string> tokens;
    string currentToken = "";

    for (int i = 0; i < type.size(); i++)
    {
        if (type[i] == '^')
        {
            tokens.push_back(currentToken);
            currentToken = "";
        }
        else if (type[i] == '-')
        {
            tokens.push_back(currentToken);
            currentToken = "";
            i++;
        }
        else
        {
            currentToken += type[i];
        }
    }
    if (currentToken != "")
    {
        tokens.push_back(currentToken);
    }
    return tokens;
}

vector<string> tokenizeRecord(string line)
{
    vector<string> tokens;
    string token;
    for (int i = 0; i < line.size(); i++)
    {
        if (line[i] <= 32)
        {
            if (token.size() > 0)
            {
                tokens.push_back(token);
                token = "";
            }
            continue;
        }
        else if (line[i] == '\"')
        {
            i++;
            while (line[i] != '\"')
            {
                token += line[i];
                i++;
            }
            token = '\"' + token + '\"';
            if (token.size() >= 0)
            {
                tokens.push_back(token);
            }

            token = "";
        }
        else
        {
            token += line[i];
        }
    }
    if (token != "")
    {
        tokens.push_back(token);
    }
    return tokens;
}
vector<string> breakIndexedCopy(string s)
{
    string temp = "";
    vector<string> answer;
    for (int i = 0; i < s.size(); i++)
    {
        if (s[i] == '[')
        {
            answer.push_back(temp);
            temp = "";
        }
        else if (s[i] == ']')
        {
            answer.push_back(temp);
            temp = "";
        }
        else
        {
            temp += s[i];
        }
    }
    return answer;
}
bool isNumber(string value)
{
    if (value[0] == '-' && value.size() > 1 && value[1] != '-')
    {
        return isNumber(value.substr(1));
    }
    for (int i = 0; i < value.size(); i++)
    {
        if (value[i] < '0' || value[i] > '9')
        {
            return false;
        }
    }
    return true;
}
bool isIgnorable(string s)
{
    set<string> ignoreFunction = {"printInt", "printStr", "readInt"};
    for (auto x : ignoreFunction)
    {
        if (x == s)
        {
            return true;
        }
    }
    return false;
}
bool isBinaryOperator(string &s)
{
    set<string> binaryOperators = {"+", "-", "*", "/", "%", ">", "<", ">=", "<=", "&&", "||"};
    auto it = binaryOperators.find(s);
    if (it != binaryOperators.end())
    {
        return true;
    }
    else
    {
        return false;
    }
}

vector<int> getAsciiValue(string s){

    vector<int> answer;

    for(int i = 0;i<s.size();i++){
        if(s[i]!='\\'){
            answer.push_back(s[i]);
        }
        else{
            if(s[i+1] == 'n'){
                answer.push_back('\n');
            }
            if(s[i+1] == 't'){
                answer.push_back('\t');
            }
            if(s[i+1] == '\\'){
                answer.push_back('\\');
            }
            i++;
        }

    }   
    return answer;
}

