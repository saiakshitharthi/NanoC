CC=gcc
FC=lex

CFLAG=-c -Wall
CFLAGW=-Wall

#Commmands

lex.yy.c: A3_19.l 
	$(FC) A3_19.l

output: A3_19.c lex.yy.c
		gcc A3_19.c -o output

all: output A3_19.nc
	./output A3_19.nc
error_all: output A3_19_errors.nc 
		  ./output A3_19_errors.nc
clean:
	  rm errors.txt commentlogs.txt tokens.txt output lex.yy.c
