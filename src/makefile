fortran_compiler = gfortran
src_dir = /home/sierra_034/Documentos/fortran/src
lib_dir = /home/sierra_034/Documentos/fortran/lib
lib_name = Sam

src_files := ./routine_a.f ./routine_b.f
obj_files := $(src_files:.f=.o)

main.exe: $(obj_files)
	$(fortran_compiler) -o main main.f $(obj_files) ../lib/libSam.a

$(obj_files):
	$(fortran_compiler) -c $(src_files)

clean:
	rm *.o *.out *.exe
