#include <stdio.h>

#include <lua.hpp>
#include "prog3_2.lua"

int main(int argc, char *argv[]){

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

char str[] = InfixToPostfix(state);
printf("%c",str);
return 0;
}
