lexico:
	lex -t src/lexico.l > src/lex.yy.c

sintactico:
	yacc -d -v src/sintactico.y -o src/y.tab.c

main:
	gcc -o bin/run src/lex.yy.c src/y.tab.c -ly -ll -lm

clean:
	rm -f src/lex.yy.c
	rm -f src/y.tab.c
	rm -f src/y.tab.h
	rm -f src/y.output

all:
	make clean
	make lexico
	make sintactico
	make main




