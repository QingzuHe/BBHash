CC=g++
CFLAGS = -O3 -std=c++11
EXEC=Bootest
all: $(EXEC)

ifeq ($(prof),1)
 CFLAGS+= -pg
endif
ifeq ($(deb),1)
 CFLAGS+= -O0 -DASSERTS -g
endif


all: $(EXEC)

Bootest:  bootest.cpp
	$(CC) -o $@ $^ $(CFLAGS) 

%.o: %.cpp %.h
	$(CC) -o $@ -c $< $(CFLAGS)


clean:
	rm -rf *.o
	rm Bootest

