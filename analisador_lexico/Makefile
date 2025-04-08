# Nome do executável
PROG = analisador_lexico

# Arquivo fonte do FLEX
LEX = analisador_lexico.l

# Comandos
all:
	flex $(LEX)
	gcc lex.yy.c -o $(PROG) -lfl
	./analisador_lexico

run: all
	./$(PROG)

clean:
	rm -f lex.yy.c $(PROG)