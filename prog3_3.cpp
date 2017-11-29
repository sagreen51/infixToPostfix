
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

lua_getglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1]);
lua_call(state, 1, 1);
const char *str = lua_tolstring(state,0,sizeof(state));

printf("%c",str);
lua_close(state);

return 0;
}


