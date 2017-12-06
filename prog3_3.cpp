
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

int result,sum;

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

lua_getglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1]);
result = lua_pcall(state, 0 , LUA_MULTRET, 0);
sum = lua_tonumber(state,-1);
printf("%d",sum);
lua_close(state);

return 0;
}


