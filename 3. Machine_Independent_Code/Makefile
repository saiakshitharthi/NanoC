compile : 
			flex  A5_19.l 
			bison -vdty A5_19.y
		  	g++ A5_19_translator.cpp y.tab.c lex.yy.c -o output
			@echo "+---------------------------------------+"

all : compile
	./output < A5_19.nc


testcases : compile
	./output < A5_19_test1.nc > A5_19_quads1.out
	./output < A5_19_test2.nc > A5_19_quads2.out
	./output < A5_19_test3.nc > A5_19_quads3.out
	./output < A5_19_test4.nc > A5_19_quads4.out
	./output < A5_19_test5.nc > A5_19_quads5.out
	./output < A5_19_test6.nc > A5_19_quads6.out
	./output < A5_19_test7.nc > A5_19_quads7.out
	./output < A5_19_test8.nc > A5_19_quads8.out
	./output < A5_19_test9.nc > A5_19_quads9.out
	./output < A5_19_test10.nc > A5_19_quads10.out
	./output < A5_19_test11.nc > A5_19_quads11.out
	./output < A5_19_test12.nc > A5_19_quads12.out
	./output < A5_19_test13.nc > A5_19_quads13.out

clean :
	rm lex.yy.c y.tab.c y.tab.h output y.output