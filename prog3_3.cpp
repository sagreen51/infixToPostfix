#include <iostream>
#include <string>
#include <stdio.h>
#include <stdlib.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

const char *s;
int result;

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();
luaL_openlibs(state);


std::string inputString;
std::getline(std::cin,inputString);
lua_call(state,0,0);
luaL_dofile(state,argv[1]);
lua_getglobal(state,"InfixToPostfix");


//lua_setglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1].c_str());

lua_call(state,1,1);
std::cout<<luaL_checkstring(state,1)<<std::endl;


lua_close(state);
return 0;
}


