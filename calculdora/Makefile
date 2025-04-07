# Nome do executável
PROG = calculadora

# Arquivo fonte do FLEX
LEX = calculadora.l

# Comandos
all:
	flex $(LEX)
	gcc lex.yy.c -o $(PROG) -lfl
	./calculadora

run: all
	./$(PROG)

clean:
	rm -f lex.yy.c $(PROG)