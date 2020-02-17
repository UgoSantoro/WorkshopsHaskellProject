##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile of the project
##

SRC			=	./app/Main.hs				\
				./src/Algorithm.hs			\
				./src/Lib.hs				\

NAME		=	HaskellProject

all			:	$(NAME)

$(NAME)		: $(SRC)
			stack build --copy-bins --local-bin-path .
			@mv $(NAME)-exe $(NAME)

clean		:
			stack clean
			rm .stack-work imageCompressor.cabal -rf

fclean		:	clean
			rm -f $(NAME)

re			:	fclean clean all

.PHONY		:	re fclean clean all
