package fengari;

import haxe.Constraints;

#if fengari_global
@:native('fengari.lauxlib')
#else
@:jsRequire('fengari', 'lauxlib')
#end
extern class Lauxlib {
    static function luaL_newstate():State;
    static function luaL_requiref(l:State, name:LuaString, openf:Function, global:Bool):Int;
    static function luaL_dostring(l:State, s:LuaString):Int;
    
}