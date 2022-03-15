CXX = g++
CXXFLAGS = -D_JUDGE_ -D_GLIBCXX_DEBUG -O2 -Wall -Wextra -Werror -Wno-sign-compare -std=c++11


program.exe: program.o Mon.o Cami.o Punt.o
	$(LINK.cc) -o $@ $^
	
program.o: program.cpp Mon.hpp Mon.hpp Cami.hpp Punt.hpp

Mon.o: Mon.cpp Mon.hpp Cami.hpp Punt.hpp

Cami.o: Cami.cpp Cami.hpp Punt.hpp

Punt.o: Punt.cpp Punt.hpp


.PHONY: clean
clean:
	rm -vf program.o Mon.o Cami.o Punt.o program.exe

.PHONY: test
test1: 
	./program.exe < mon1.inp | diff - mon1.cor
test2: 
	./program.exe < mon2.inp | diff - mon2.cor

test:
#	Descomenteu les següents línies si voleu executar tots
#	els jocs de proves.

# 	./program.exe < mon1.inp
# 	./program.exe < mon2.inp
# 	./program.exe < mon3.inp
# 	./program.exe < mon4.inp
# 	./program.exe < mon5.inp
# 	./program.exe < mon6.inp
#	./program.exe < mon1.inp | diff - mon1.cor
# 	./program.exe < mon2.inp | diff - mon2.cor
# 	./program.exe < mon3.inp | diff - mon3.cor
# 	./program.exe < mon4.inp | diff - mon4.cor
# 	./program.exe < mon5.inp | diff - mon5.cor
# 	./program.exe < mon6.inp | diff - mon6.cor