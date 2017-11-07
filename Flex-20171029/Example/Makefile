# Makefile to build Flex example

all: flex_example1

flex_example1: flex_example1.c flex_example1.h
	gcc -ll flex_example1.c -o flex_example1

flex_example1.c flex_example1.h: flex_example1.lex
	flex flex_example1.lex

# Utility targets
.PHONY: clean test
clean:
	rm -f flex_example1 flex_example1.c flex_example1.h myoutput.txt

test: flex_example1
	./flex_example1 < input.txt > myoutput.txt
	diff -u output.txt myoutput.txt

