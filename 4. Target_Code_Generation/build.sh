g++ A6_19_translator.cpp -o A6_19_translator

cat 'A6_19_test1.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads1.out
./A6_19_translator >A6_19_quads1.nasm

cat 'A6_19_test2.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads2.out
./A6_19_translator >A6_19_quads2.nasm

cat 'A6_19_test3.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads3.out
./A6_19_translator >A6_19_quads3.nasm

cat 'A6_19_test4.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads4.out
./A6_19_translator >A6_19_quads4.nasm


cat 'A6_19_test5.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads5.out
./A6_19_translator >A6_19_quads5.nasm


cat 'A6_19_test6.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads6.out
./A6_19_translator >A6_19_quads6.nasm

cat 'A6_19_test7.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads7.out
./A6_19_translator >A6_19_quads7.nasm

cat 'A6_19_test8.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads8.out
./A6_19_translator >A6_19_quads8.nasm

cat 'A6_19_test9.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads9.out
./A6_19_translator >A6_19_quads9.nasm

cat 'A6_19_test10.nc' > 'Assignment 5/A5_19.nc'
make -C 'Assignment 5/' all
cat three_address_input.txt >A6_19_quads10.out
./A6_19_translator >A6_19_quads10.nasm
