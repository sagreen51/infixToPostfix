
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

lua_pop(1,lua_gettop(1));
lua_close(state);

return 0;
}


