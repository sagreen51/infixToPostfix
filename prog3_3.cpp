#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include <lua.hpp>


int main(int argc, char *argv[]){

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();//create new lua state
luaL_openlibs(state);//open libraries for lua state
char *s = argv[1];//take the input string from the command argument

luaL_dofile(state,s);//create the file from the string arguement
std::string inputString;
std::getline(std::cin,inputString);//take command line argument and copy it to inputString
lua_getglobal(state,"InfixToPostfix");//get the function


//char *inputString;
//gets(inputString);

//lua_setglobal(state,"InfixToPostfix");

lua_pushstring(state,inputString.c_str());//.c_str()//push the command line arguement into the lua stack

lua_pcall(state,1,1,0);
//char *output = lua_tostring(state,1);
//printf("%s",output);
//std::cout<<output<<std::endl;
std::cout<<lua_tostring(state,-1)<<std::endl;//retrieve result from lua stack and prints resulting postfix string


lua_close(state);
return 0;
}


