fortran_compiler = gfortran
src_dir = /home/sierra_034/Documentos/fortran/src
lib_dir = /home/sierra_034/Documentos/fortran/lib
lib_name = Sam

src_files := $(wildcard $(src_dir)/*.f)
obj_files := $(src_files:.f=.o)

main.exe: $(obj_files)
	$(fortran_compiler) *.o -o main.exe -L$(lib_dir) -l$(lib_name)

%.o %.out: %.f
	$(fortran_compiler) $< -g -L$(lib_dir) -l$(lib_name)
	$(fortran_compiler) -c $<

clean:
	rm *.o *.out *.exe
