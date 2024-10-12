
libname = constants

.PHONY : install compile all

all : install compile

compile : 
	gfortran -fpic -c -J $(HOME)/Fortran/include $(libname).f90
	gfortran -shared -o $(HOME)/Fortran/lib/lib$(libname).so $(libname).o
	rm *.o
install:
	./install.sh
