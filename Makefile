all: mandelbrot

CC = mpic++

INCLUDE = -I/usr/include/ -I/opt/X11/include/
LIBDIR = -L/opt/X11/lib/

LDLIBS += -lGL -lX11 -lglut -lGLU
CPPFLAGS += $(INCLUDE)

#DEBUG = -g -Wall
OBJ = timer.o log.o main.o

mandelbrot: $(OBJ)
	$(CC) $(LIBDIR) $(LDLIBS) $(OBJ) -o mandelbrot

main.o: main.c
	$(CC) $(DEBUG) $(CPPFLAGS) -c main.c

timer.o: timer.c
	$(CC) $(DEBUG) $(CPPFLAGS) -c timer.c

log.o: log.c
	$(CC) $(DEBUG) $(CPPFLAGS) -c log.c
 
clean: 
	rm -fv $(OBJ) mandelbrot

