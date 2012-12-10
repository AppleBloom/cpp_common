.SUFFIXES:
SHELL =/bin/sh
CXX =g++

# custom options:
standard =c++0x
defines =
name =
opt =debug
#^ other possible values: release, profile

# compiler flags:
debug = -ggdb -Wall -pedantic -D DEBUG
release = -O2
library_flags =
