package fengari;

#if fengari_global
@:native('fengari')
#else
@:jsRequire('fengari')
#end
extern class Fengari {
	static function to_luastring(v:String):String;
	static function to_jsstring(v:String):String;
}