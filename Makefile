
libname = constants

.PHONY : install compile all

all : install compile

compile : 
	gfortran -fpic -c -J $(HOME)/Fortran/include $(libname).f90
	gfortran -shared -o ../lib$(libname).so $(libname).o
	rm *.o
install:
	./install.sh
