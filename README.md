# theinstaller
The ultimate lua and luarocks installer, which includes the mingw toolchain, to make this a truly working out of the box experience

The .vdproj is here just for saying i put the project on github, because unless you are on my machine, it'll be VERY hard to build it yourself. You'll need the mingw clang windows release files https://github.com/mstorsjo/llvm-mingw/releases this one being the one i am using currently https://github.com/mstorsjo/llvm-mingw/releases/download/20240502/llvm-mingw-20240502-msvcrt-x86_64.zip and you'll need to get the msvcrt one, and drag it into the mingw folder. download the cmake binary for windows, the .zip file, and drag it all into the tools folder. For make, you do the same, you get the .zip binary for windows, drag it all, and you also need to not forget to also get the dependency binary .zip download which is also below, and you also need to drag it into the tools folder. Then, you'll get xmake from xmake.io, cd into editenv, and run xmake, the project should already be looking at the output for the editenv.dll file, you'll need to make sure  you have the visual studio C++ stuff installed on your computer. last up is getting the lua files, you need to get the lua5.1 dll and bin files in the lua/bin folder, the 5 .h files into the include folder, and then put the lua5.1.dll into the lib folder. In luarocks, you get luarocks.exe and luarocks-admin.exe from the luarocks.org all in one package (x64) and drag it into the luarocks/bin folder, and then you write the config.lua file with this:
```lua
lua_version = "5.1"
lua_interpreter = "lua5.1"

rocks_trees = {
		{name = "user", root = os_getenv("LUAROCKS_LOCATION")},
		{name = "system", root = os_getenv("LUAROCKS_LOCATION")}
}
```
Do not worry, the LUAROCKS_LOCATION will be defined during the installation as an env variable, this is there to make it set up the three dynamically, meaning if you don't select the default install location, it'll still work.

In the end, it should look roughly like this
![BUILD](https://github.com/justdie386/theinstaller/assets/79466202/dd5a78f7-33b3-4e07-be74-41b678ef6df6)


So yeah, build it yourself, don't build it yourself, all the instructions are there. If some files the visual studio project excepts just isn't there anymore because the release i used has become too outdated, just delete every file in the folder, and just drag the new ones at their place, because visual studio will refuse to compile if any file is missing. if you get an issue about a .dll.dlt file or something along the lines, just delete it, thats what i did.
