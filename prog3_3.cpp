
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

lua_getglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1]);
lua_pcall(state, 0 , LUA_MULTRET, 0);
const char *str = lua_tostring(state,-1);

printf(str);
lua_close(state);

return 0;
}


