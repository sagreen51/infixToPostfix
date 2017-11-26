#include <stdio.h>

#include <lua.hpp>

int  main(int argc,char *argv[]){

	lua_State *state = luaL_newstate();
	luaL_openlibs(state);
	luaL_dofile(state,argv[1]);

	return 0;

}
