Group 19 README

Group Members:
Arthi Sai Akshith 200101019
Heemanth Kilaparthi 200101056

To run the assignment, use the following command:
make all

To clear the logs, executables and other text files, use the following command:
make clean

Some Assumptions:
* integer constant also contains 0.
* + and - are only considered as operators (Same as in traditional C. There will be a conflict if use -2 as a constant, as if I write 2-3, lexical analyzer don't know about the 2 before -3, and - will not be considered as an operator. We will make syntax analyzer aligning with the asssumption in future assignments.).

About Assignment:

* when you run the above command (make all), all tokens will be generated in tokens.txt. Token name can be inferred from A3_18.l.
* All comments are written in commentlogs.txt file
* All errors (While parsing) are written in errors.txt file.
* There is one more test file which contains some errors, and when you run that test file, you will get some errors (if grammar definition of that character is not mentioned.).
  To run that file, you can use the command below:
make error_all
********* In case you get any error while using makefile, please UNDO A3_19.c file, by clicking ctrl+z. Or just paste the previous code of A3_19.c into A3_19.c. 