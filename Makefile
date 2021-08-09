CC=gcc
SRC=egltri
DEPS=`pkg-config --cflags --libs egl opengl x11` -lm

egltri:
	$(CC) -o $(SRC) $(SRC).c $(DEPS)
