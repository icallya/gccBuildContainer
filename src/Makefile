CC=gcc
LIBS=-lm

DEPS = make.h
OBJ  = main.o func.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) --static -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:  
	rm -f *.o *~ core *~
