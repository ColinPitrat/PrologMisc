NAME=Geometry

all: run

run:
	gprolog --init-goal "consult('$(NAME).pl')"

build:
	gplc $(NAME).pl
	./$(NAME)

clean:
	rm ./$(NAME)
