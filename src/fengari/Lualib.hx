package fengari;

import haxe.Constraints;

#if fengari_global
@:native('fengari.lualib')
#else
@:jsRequire('fengari', 'lualib')
#end
extern class Lualib {
    
    static var luaopen_base:Dynamic;
    static var luaopen_coroutine:Dynamic;
    static var luaopen_table:Dynamic;
    static var luaopen_io:Dynamic;
    static var luaopen_os:Dynamic;
    static var luaopen_string:Dynamic;
    static var luaopen_utf8:Dynamic;
    static var luaopen_bit32:Dynamic;
    static var luaopen_math:Dynamic;
    static var luaopen_debug:Dynamic;
    static var luaopen_package:Dynamic;
    
}