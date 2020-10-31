# Vanilla+ Library: Core

Manages and unifies all the modules from this library.

## Requirements
- Minecraft 1.15+.

## Releases
- [v1(latest)](https://github.com/TheWii/vanilla-plus-library/raw/master/releases/core/vplib-core-datapack-v1.zip)

## Documentation

### Load

Vanilla+ Library load process happens inside the function tag `#vplib:load/__init` which is normally called by `#minecraft:load`. The loading is split into two function tags: `#vplib:load/library` happens internaly within the library modules and shouldn't be modified by any datapack. The function tag `#vplib:load/dependents` is called after all modules were loaded and it's where datapacks that depends on this library should load from.

```
> #minecraft:load -> Minecraft load root.
|
+--> #vplib:load/__init -> Initiate loading process.
   |
   +--> #vplib:load/library -> Library internal loading process
   +--> #vplib:load/dependents -> Call dependents.
      |
      +--> dependent1:load -> 1st datapack that depends on this library.
      +--> dependent2:load -> 2nd datapack that depends on this library.
```