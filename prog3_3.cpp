
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

int result,sum;

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

lua_setglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1]);
lua_pcall(state,0,0,0);
lua_call("InfixToPostfix");
strcpy(state,lua_getstring(lua_getresult(1)));
printf("%s",s);
lua_close(state);
return s;
}


