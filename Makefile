DEBUG=true
LDFLAGS=
CFLAGS=

ifeq ($(DEBUG),true)
LDFLAGS+=-g
CFLAGS+=-g
endif

ifeq ($(OS),Windows_NT)
CFLAGS=-D_INC_TCHAR
LDFLAGS+=-liconv
endif

all: fathuman

fathuman: main.o fatfs/ff.o fatfs/option/cc932.o
	gcc $^ -o $@ $(LDFLAGS)

%.o: %.c
	gcc -c $< -o $@ $(CFLAGS)

clean:
	rm -f fathuman *.o fatfs/*.o fatfs/option/*.o
