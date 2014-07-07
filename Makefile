all: humanfloppy

humanfloppy: main.o fatfs/ff.o fatfs/option/cc932.o
	gcc $^ -o $@

%.o: %.c
	gcc -c $< -o $@

clean:
	rm -f humanfloppy *.o fatfs/*.o fatfs/option/*.o
