# To build your program two only three prameters need to be modified:
# PROGNAME: Name of the executable (./macro_GUI)
# SOURCE: Files ending with .cc
# INCLUDE: Files ending with .h
# If the source or include files are not in your make directory,
# add the directory path before the files 
# (e.g. <dir>/<dir>/macro_GUI.cc or <dir>/<dir>/macro_GUI.h)
# Commands to use:
# make: to make the Makefile
# make test: to test dependencies
# make clean: to delete excecutable and object files
# Execute from commnd line

PROGNAME      = macro_GUI
SOURCES       = main.cc macro_GUI.cc 
INCLUDES      = macro_GUI.h
OBJECTS       = $(patsubst %.cc, %.o, $(SOURCES))
ROOTCFLAGS   := $(shell root-config --cflags)
ROOTLIBS     := $(shell root-config --libs)
ROOTGLIBS    := $(shell root-config --glibs)
ROOTLIBS     := $(shell root-config --nonew --libs)
CFLAGS       += $(ROOTCFLAGS)
LIBS         += $(ROOTLIBS)
LIBS         += -lMinuit
LDFLAGS       = -O

$(PROGNAME):    $(OBJECTS)
		g++ -o $@ $(OBJECTS) $(LDFLAGS) $(LIBS)

%.o : %.cc $(INCLUDES)
	g++ ${CFLAGS} -c  -g -o $@ $<

test:
	@echo $(ROOTCFLAGS)

clean:	
	-rm -f ${PROGNAME} ${OBJECTS}

