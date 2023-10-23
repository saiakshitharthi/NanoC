compile : 
			flex  A5_19.l 
			bison -vdty A5_19.y
		  	g++ A5_19_translator.cpp y.tab.c lex.yy.c -o output
			@echo "+---------------------------------------+"

all : compile
	./output < A5_19.nc


testcases : compile
	./output < Testcase_1.nc > Testcase_1_output.txt
	./output < Testcase_2.nc > Testcase_2_output.txt
	./output < Testcase_3.nc > Testcase_3_output.txt
	./output < Testcase_4.nc > Testcase_4_output.txt
	./output < Testcase_5.nc > Testcase_5_output.txt
	./output < Testcase_6.nc > Testcase_6_output.txt
	./output < Testcase_7.nc > Testcase_7_output.txt
	./output < Testcase_8.nc > Testcase_8_output.txt
	./output < Testcase_9.nc > Testcase_9_output.txt
	./output < Testcase_10.nc > Testcase_10_output.txt
	./output < Testcase_11.nc > Testcase_11_output.txt
	./output < Testcase_12.nc > Testcase_12_output.txt
	./output < Testcase_13.nc > Testcase_13_output.txt

clean :
	rm lex.yy.c y.tab.c y.tab.h output y.output