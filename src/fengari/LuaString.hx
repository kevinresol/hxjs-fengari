package fengari;

abstract LuaString(Dynamic) {
	inline function new(s) this = s;
	
	@:from
	public static function fromJsString(v:String):LuaString
		return new LuaString(Fengari.to_luastring(v));
	@:to
	public function toJsString():String
		return this == null ? null : Fengari.to_jsstring(this);
}