#include <iostream>
#include <string>
#include <stdio.h>
#include <stdlib.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

char *s;

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
s = argv[1];
luaL_dofile(state,s);
lua_call(state,0,0);
std::string inputString;
std::getline(std::cin,inputString);

lua_getglobal(state,"InfixToPostfix");


//lua_setglobal(state,"InfixToPostfix");
lua_pushstring(state,inputString.c_str());

lua_call(state,1,1);
std::string output = lua_tostring(state,1);
std::cout<<output<<endl;
std::cout<<lua_tostring(state,2)<<std::endl;


lua_close(state);
return 0;
}


