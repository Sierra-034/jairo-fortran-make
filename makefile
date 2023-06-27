fortran_compiler = gfortran
src_dir = /home/sierra_034/Documentos/fortran/src
lib_dir = ./lib/libSam.a

src_files := ./src/routine_a.f ./src/routine_b.f
obj_files := $(src_files:.f=.o)

main: $(obj_files)
	$(fortran_compiler) -o ./build/main ./src/main.f $(obj_files) $(lib_dir)
	rm ./src/*.o

%.o: %.f
	$(fortran_compiler) -c ./src/$(<F) -o ./src/$(<F:.f=.o)

clean:
	rm ./src/*.o ./build/main
