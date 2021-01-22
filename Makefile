HEADER		=	incs/libft.h

SRCS_PATH	=	srcs

SRCS		=	srcs/convert/ft_atoi.c \
				srcs/convert/ft_itoa.c \
				srcs/ft_is/ft_isalnum.c \
				srcs/ft_is/ft_isalpha.c \
				srcs/ft_is/ft_isascii.c \
				srcs/ft_is/ft_isdigit.c \
				srcs/ft_is/ft_isprint.c \
				srcs/ft_mem/ft_memset.c \
				srcs/ft_mem/ft_memcpy.c \
				srcs/ft_mem/ft_memccpy.c \
				srcs/ft_mem/ft_memmove.c \
				srcs/ft_mem/ft_memchr.c \
				srcs/ft_mem/ft_memcmp.c \
				srcs/ft_to/ft_tolower.c \
				srcs/ft_to/ft_toupper.c \
				srcs/malloc/ft_bzero.c \
				srcs/malloc/ft_calloc.c \
				srcs/ft_str/ft_strlcat.c \
				srcs/ft_str/ft_strlen.c \
				srcs/ft_str/ft_strncmp.c \
				srcs/ft_str/ft_strlcpy.c \
				srcs/ft_str/ft_strchr.c \
				srcs/ft_str/ft_strrchr.c \
				srcs/ft_str/ft_strnstr.c \
				srcs/ft_str/ft_strdup.c \
				srcs/ft_str/ft_substr.c \
				srcs/ft_str/ft_strjoin.c \
				srcs/ft_str/ft_strtrim.c \
				srcs/ft_str/ft_split.c \
				srcs/ft_str/ft_strmapi.c \
				srcs/write/ft_putchar_fd.c \
				srcs/write/ft_putstr_fd.c \
				srcs/write/ft_putnbr_fd.c \
				srcs/write/ft_putendl_fd.c \
				srcs/write/ft_putchar.c \
				srcs/write/ft_putstr.c \
				srcs/write/ft_putnbr.c \
				srcs/list/ft_lstadd_back.c \
				srcs/list/ft_lstadd_front.c \
				srcs/list/ft_lstclear.c \
				srcs/list/ft_lstdelone.c \
				srcs/list/ft_lstiter.c \
				srcs/list/ft_lstlast.c \
				srcs/list/ft_lstmap.c \
				srcs/list/ft_lstnew.c \
				srcs/list/ft_lstsize.c

OBJS		=	${SRCS:.c=.o}

FLAGS		=	-Werror -Wall -Wextra

NAME		=	libft.a

INCS		=	libft.h

.c.o:
	gcc ${FLAGS} -I ${INCS} -c -o $@ $<

all:	${NAME}

${HEADER}:	${OBJS}

${NAME}:	${OBJS}
	ar rc ${NAME} $(OBJS)

clean:
	rm -rf ${OBJS}

fclean:	clean
	rm -rf ${NAME} 

re:	fclean all

.PHONY:	re clean all fclean bonus
