# description

## cpp_vars.mk, cpp_rules.mk

These can be included in makefiles in the following manner:

```makefile
common_folder = clone_of_this_repository_location


include $(common_folder)/cpp_vars.mk

objs = foo.o bar.o # where foo.cpp, bar.cpp are the files needed to be compiled
name = executable_or_library_name # without extension
# other variables from cpp_vars.mk may be overridden here

include $(common_folder)/cpp_rules.mk # introduces targets: library, standalone and clean
```

## common.h

Is supposed to be included in every C++ source file of a project that uses it. Helps debugging and handling errors.

# copyright

Copyright (c) 2012 [AppleBloom](mailto:love.and.toleration@gmail.com). See [LICENSE](./LICENSE.txt) for details.