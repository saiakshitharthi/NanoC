bison : A4_19.y 
		bison  -vdty A4_19.y
flex  : A4_19.l
		flex A4_19.l 
compile : bison flex 
		  gcc A4_19.c y.tab.c lex.yy.c -o output
generate_output : A4_19.y 
				bison -v A4_19.y 
all : compile
	./output < A4_19.nc
copy_testcase_working : testcase_working.c 
					cat testcase_working.c > A4_19.nc
copy_testcase_not_working : testcase_not_working.c 
					cat testcase_not_working.c > A4_19.nc

test_working :  copy_testcase_working all 
test_not_working : copy_testcase_not_working all 

clean :
	rm lex.yy.c y.tab.c y.tab.h output y.output