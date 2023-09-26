CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=
PROGRAM1_SOURCES = main.cpp radio.cpp  
PROGRAM2_SOURCES = src/UserInterface.cpp src/Database.cpp radio.cpp 
OBJECTS1=$(PROGRAM1_SOURCES:.cpp=.o)
OBJECTS2=$(PROGRAM2_SOURCES:.cpp=.o)
EXECUTABLE1=radioTest
EXECUTABLE2=radioDB

all: $(EXECUTABLE1) $(EXECUTABLE2)

$(EXECUTABLE1): $(OBJECTS1)

	$(CC) $(LDFLAGS) $(OBJECTS1) -o $@

$(EXECUTABLE2): $(OBJECTS2)

	$(CC) $(LDFLAGS) $(OBJECTS2) -o $@

.cpp.o:

	$(CC) $(CFLAGS) $< -o $@

clean: rm -f *.o $(EXECUTABLE1)