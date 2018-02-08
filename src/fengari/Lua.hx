package fengari;

import haxe.Constraints;

#if fengari_global
@:native('fengari.lua')
#else
@:jsRequire('fengari', 'lua')
#end
extern class Lua {
	@:native('LUA_VERSION')
	static var VERSION:String;
	
	@:native('LUA_OK')
	static var OK:Int;
	@:native('LUA_REGISTRYINDEX')
	static var REGISTRYINDEX:Int;

	
	@:native('LUA_TNIL')
	static var TNIL:Int;
	@:native('LUA_TNUMBER')
	static var TNUMBER:Int;
	@:native('LUA_TTABLE')
	static var TTABLE:Int;
	@:native('LUA_TSTRING')
	static var TSTRING:Int;
	@:native('LUA_TBOOLEAN')
	static var TBOOLEAN:Int;
	@:native('LUA_TFUNCTION')
	static var TFUNCTION:Int;
	@:native('LUA_TUSERDATA')
	static var TUSERDATA:Int;
	@:native('LUA_TTHREAD')
	static var TTHREAD:Int;
	@:native('LUA_TLIGHTUSERDATA')
	static var TLIGHTUSERDATA:Int;
	
	static function lua_close(l:State):Void;
	
	static function lua_pcall(l:State, nargs:Int, nresult:Int, errfunc:Int):Int;
	
	
	static function lua_gettop(l:State):Int;
	static function lua_settop(l:State, i:Int):Int;
	static function lua_next(l:State, i:Int):Int;
	static function lua_pop(l:State, i:Int):Void;
	static function lua_upvalueindex(i:Int):Int;
	static function lua_xmove(from:State, to:State, n:Int):Void;
	
	static function lua_rawgeti(l:State, i:Int, n:Int):Int;

	
	
	static function lua_getglobal(l:State, name:LuaString):Void;
	static function lua_setglobal(l:State, name:LuaString):Void;
	static function lua_newtable(l:State):Void;
	static function lua_createtable(l:State, seqSize:Int, otherSize:Int):Void;
	static function lua_settable(l:State, i:Int):Void;
	
	static function lua_pushvalue(l:State, i:Int):Void;
	static function lua_pushnil(l:State):Void;
	static function lua_pushnumber(l:State, v:Float):Void;
	static function lua_pushboolean(l:State, v:Bool):Void;
	static function lua_pushstring(l:State, v:LuaString):Void;
	static function lua_pushthread(l:State):Int;
	static function lua_pushlightuserdata(l:State, v:Dynamic):Void;
	static function lua_pushcclosure(l:State, v:Function, n:Int):Void;
	
	
	static function lua_typename(l:State, i:Int):LuaString;
	static function lua_type(l:State, i:Int):Int;
	
	static function lua_topointer(l:State, i:Int):Dynamic;
	static function lua_tonumber(l:State, i:Int):Float;
	static function lua_toboolean(l:State, i:Int):Bool;
	static function lua_tostring(l:State, i:Int):LuaString;
	static function lua_tocfunction(l:State, i:Int):Function;
	static function lua_tothread(l:State, i:Int):State;

}