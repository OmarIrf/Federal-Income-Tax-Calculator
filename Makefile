CXX ?= g++
CXXFLAGS ?= -std=c++11 -Wall -Wextra -pedantic

TARGET = taxcalc
SRCS = Federal-Income-Tax-Calculator.cpp

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET) *.o

.PHONY: all clean
