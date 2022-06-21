NAME = libft.a

SRCS = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcpy.c ft_memmove.c ft_memset.c \
ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_strchr.c \
ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c \
ft_strrchr.c ft_tolower.c ft_toupper.c ft_memcmp.c ft_calloc.c ft_split.c \
ft_strjoin.c ft_substr.c ft_strtrim.c ft_itoa.c ft_strmapi.c ft_striteri.c \
ft_strjoin_mod.c get_next_line.c get_next_line_utiles.c ft_lstnew.c \
ft_lstsize.c ft_lstadd_front.c ft_lstlast.c ft_lstdelone.c ft_lstadd_back.c \
ft_lstiter.c ft_lstclear.c ft_lstmap.c ft_printf.c utils_printf.c \
utils_printf_2.c lstadd_back_char.c lst_size_char.c lstadd_front_char.c \
lstclear_char.c lstiter_char.c lstdelone_char.c lstmap_char.c lstnew_char.c \
lstlast_char.c ft_stridup.c ft_strcut.c

OBJS = $(SRCS:.c=.o)

OBJS_BONUS = $(SRCS_BONUS:.c=.o)

CC = gcc

FLAGS = -Wall -Wextra -Werror
#FLAGS += -fsanitize=address -g3

all: $(NAME)

%.o : %.c libft.h
	$(CC) $(FLAGS) -I includes -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

bonus: $(OBJS) $(OBJS_BONUS) $(NAME)
	ar -rcs $(NAME) $(OBJS_BONUS)  

clean:
	rm -f $(OBJS) $(OBJS_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:	all bonus clean fclean re