lua_version = "5.1"
lua_interpreter = "lua5.1"

rocks_trees = {
		{name = "user", root = os_getenv("LUAROCKS_LOCATION")},
		{name = "system", root = os_getenv("LUAROCKS_LOCATION")}
}
