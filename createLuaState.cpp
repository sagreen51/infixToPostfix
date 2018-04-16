#include <stdio.h>

#include <lua.hpp>

int  main(int argc,char *argv[]){

	printf("Assignment #3-1, Steven Green, s.a.green51@gmail.com\n");

	lua_State *state = luaL_newstate();//create new lua state
	luaL_openlibs(state);//open libraries for lua state
	luaL_dofile(state,argv[1]);//take command line argument for lua file name

	return 0;

}
