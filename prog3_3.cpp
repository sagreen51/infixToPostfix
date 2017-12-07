#include <iostream>
#include <string>
#include <stdio.h>
#include <stdlib.h>

#include <lua.hpp>


int main(int argc, char *argv[]){

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
char *s = argv[1];
luaL_dofile(state,s);
lua_pcall(state,0,0,0);

std::string inputString;
std::getline(std::cin,inputString);
//char *inputString;
//gets(inputString);

lua_getglobal(state,"InfixToPostfix");
//lua_setglobal(state,"InfixToPostfix");

lua_pushstring(state,inputString.c_str());//.c_str()

lua_pcall(state,1,1,0);
//char *output = lua_tostring(state,1);
//printf("%s",output);
//std::cout<<output<<std::endl;
std::cout<<lua_checkstring(state,-1)<<std::endl;


lua_close(state);
return 0;
}


