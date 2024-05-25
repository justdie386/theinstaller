# theinstaller
The ultimate lua and luarocks installer, which includes the mingw toolchain, make, AND cmake, to make this a truly working out of the box experience

The msi is in the release folder, if you want to build the installer yourself, clone this repo, and then all you gotta do is just taking the script from the .github/workflows/main.yaml, there's a bunch of bash commands, put them in a .sh file run them in the git bash shell, and then you should only need to build it from visual studio by opening the lua.sln file in the repo

Below is a video showcasing it on a vm


https://github.com/justdie386/theinstaller/assets/79466202/4b8b297c-839c-4276-8516-1409b51a5bdc



Current TODO stuff include:
Remove leftovers from luarocks when uninstalling
Remove the env variables that have been set by editenv during hte installer when uninstall
Possibly re-writing an editenv altnerative in C to avoid the license and keep it in the same repo
Work out a second installer which doesn't have the mingw toolchain bundled
Setup the changes needed to allow for more than one lua version at a time
