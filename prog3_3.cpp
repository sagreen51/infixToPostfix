
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

const char *s;
int result;

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

lua_pcall(state,0,0,0);

lua_getglobal(state,"InfixToPostfix");
PrintTable(state);
//lua_setstring(state,argv[1]);

lua_getglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1]);
lua_gettable(state,-2);


//lua_pcall(state,1,1,0);
s = lua_tostring(state,-1);
result = lua_tonumber(state);
printf("%s\n",s);
lua_close(state);
return result;
}


