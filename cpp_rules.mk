.PHONY: library standalone clean

# derived compiler flags:
profile = $(release) -pg
opt_flags = $($(opt))
standard_flag = -std=$(standard)
include_flags =-I $(common_folder)
define_flags =$(patsubst %,-D %,$(defines))

# compiler commands:
library: compile_flags = $(standard_flag) $(opt_flags) $(include_flags) $(define_flags) -fPIC    -c
standalone: compile_flags = $(standard_flag) $(opt_flags) $(include_flags) $(define_flags) -D STANDALONE    -c
library: link_flags = $(standard_flag) $(opt_flags) $(library_flags)    -shared    -Wl,-soname,$(name).so    -o $(name).so
standalone: link_flags = $(standard_flag) $(opt_flags) $(library_flags)    -o $(name)


# basic mode:

library: $(name).so
standalone: $(name)

$(name) $(name).so: $(objs)
	@echo "LINKING"
	$(CXX)    $(link_flags)    $^
	@echo

%.o: %.cpp
	@echo "COMPILING"
	$(CXX)    $(compile_flags)    $< -o $@
	@echo


# special modes:

clean:
	@echo  "CLEAR:"
	rm -f $(name) $(name).so $(objs)
	@echo;
