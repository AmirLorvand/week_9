CXX = g++
CXXFLAGS = -g -Wall -Wextra -Wpedantic

.PHONY: all
all: program

program: numberconversion.cpp romandigitconverter.cpp numberconversion.o romandigitconverter.o
	$(CXX) $(CXXFLAGS) -o program numberconversion.o romandigitconverter.o

numberconversion.o: numberconversion.cpp numberconversion.h
	$(CXX) $(CXXFLAGS) -c numberconversion.cpp

romandigitconverter.o: romandigitconverter.cpp
	$(CXX) $(CXXFLAGS) -c romandigitconverter.cpp

.PHONY: clean
clean:
	$(RM) *.o
	$(RM) program