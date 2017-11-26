#include <stdio.h>

#include <lua.hpp>

int  main(int argc,char *argv[]){

	printf("Assignment #3-1, Steven Green, s.a.green51@gmail.com");

	lua_State *state = luaL_newstate();
	luaL_openlibs(state);
	luaL_dofile(state,argv[1]);

	return 0;

}
