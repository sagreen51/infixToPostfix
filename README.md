
createLuaState: C++ program that takes a single command line argument which is the name of a lua file. Then creates a lua enviroment and loads the libraries for the lua state. Then loads the lua file. 
    Compiled like so: g++ prog3_1.cpp -o prog3_1 -I lua-5.3.4/src -L lua-5.3.4/src -l lua -l m -l dl 

Program 2: Lua program that takes a single string arguement. Tokenize it by spaces then apply the infix to postfix algorithm. 

InfixToPostfix algorithm:      just a description of the algorithm ...

    "If the character is a int or a char it will be placed in a table. If it is an operand its priority will be compared  
    with the top of the stack. If the priority is lower it will pop the stack onto the list till its not and push the 
    current operand on stack. After parsing through string it will pop the rest of the stack onto the list." 

Then concat the list into a string seperated by spaces andreturn the string.  

Program 3: C++ program that creates a lua enviroment and loads the libraries for the lua state. Then loads the file specified by the command line argument and calls the InfixToPostfix global onto lua stack. Then takes an input from the command line and pass it onto the lua stack. After executing the lua call it retrieves and prints the resulting postfix string.
