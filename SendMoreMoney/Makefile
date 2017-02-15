NAME=SendMoreMoney

all: build

run:
	gprolog --init-goal "consult('$(NAME).pl')"

build:
	gplc $(NAME).pl
	./$(NAME)
