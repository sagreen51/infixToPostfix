
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

char *result;

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);
lua_pcall(state,0,0,0);

lua_setglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1]);

lua_pcall(state,1,1,0);
result = lua_tostring(state,-1);
printf("%s",result);
lua_close(state);
return result;
}


