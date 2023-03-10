CXX=g++
CXXFLAGS=-std=c++20 -Os -fno-exceptions -fno-rtti -march=native -Wall -Wextra -Wpedantic -Wconversion
LIBS=`pkg-config fmt libgvc --libs`
OBJS=main.o

default: rtd

rtd: $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o rtd $(LIBS)

main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) main.cpp

clean:
	rm -rf *.o rtd
