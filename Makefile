NAME=libft.a

SRCS=\
		ft_atoi.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_isdigit.c \
		ft_strchr.c \
		ft_strlen.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_strncmp.c \
		ft_strrchr.c \
		ft_strnstr.c \
		ft_strlcpy.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_strlcat.c \
		ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memmove.c \
		ft_putendl_fd.c \
		ft_calloc.c \
		ft_putnbr_fd.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \

SRCSBONUS=\
		ft_lstnew_bonus.c \
		ft_lstadd_front_bonus.c \
		ft_lstsize_bonus.c \
		ft_lstlast_bonus.c \
		ft_lstadd_back_bonus.c \
		ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c \
		ft_lstiter_bonus.c \
		ft_lstmap_bonus.c \

OBJS=$(SRCS:%.c=%.o)

OBJSBONUS=$(SRCSBONUS:%.c=%.o)

CC= cc

CFLAGS= -Werror -Wextra -Wall

RM= rm -rf


all:$(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c libft.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJS) $(OBJSBONUS)

fclean:clean
	$(RM) $(NAME)
	rm -f a.out

re:fclean all

bonus: 
	$(MAKE) SRCS="$(SRCS) $(SRCSBONUS)"

.PHONY: all clean fclean re bonus
