CC		= gcc

RM		= rm -f

NAME		= my_printf

CFLAGS		= -W -Wextra
CFLAGS		+= -Werror
CFLAGS		+= -I ./include

SRCS_DIR	= src/
SRCS_FILES	= my_atoi.c 	\
		  my_dputchar.c	\
		  my_dputnbr.c	\
		  my_dputstr.c	\
		  my_strcmp.c	\
		  my_strlen.c	\
		  my_dprint.c	\
		  my_dprintf.c	\
		  main.c

SRCS		= $(addprefix $(SRCS_DIR), $(SRCS_FILES))

OBJS		= $(SRCS:.c=.o)


all: $(NAME)

$(NAME): $(OBJS)
	 $(CC) -o $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re