# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anfichet <anfichet@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/22 19:11:15 by anfichet          #+#    #+#              #
#    Updated: 2023/12/22 19:11:15 by anfichet         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

#------------------------------------------------------------------------------#
# 							INGREDIENTS										   #
#------------------------------------------------------------------------------#

SRCS_DIR= ./SRCS
OBJS_DIR= ./OBJS

SRCS=\
		SRCS/char/ft_isalnum.c \
		SRCS/char/ft_isalpha.c \
		SRCS/char/ft_isascii.c \
		SRCS/char/ft_isdigit.c \
		SRCS/char/ft_isprint.c \
		SRCS/char/ft_tolower.c \
		SRCS/char/ft_toupper.c \
		SRCS/ft_atoi.c \
		SRCS/ft_itoa.c \
		SRCS/ft_putchar_fd.c \
		SRCS/ft_putendl_fd.c \
		SRCS/ft_putnbr_fd.c \
		SRCS/ft_putstr_fd.c \
		SRCS/ft_split.c \
		SRCS/mem/ft_bzero.c \
		SRCS/mem/ft_calloc.c \
		SRCS/mem/ft_memchr.c \
		SRCS/mem/ft_memcmp.c \
		SRCS/mem/ft_memcpy.c \
		SRCS/mem/ft_memmove.c \
		SRCS/mem/ft_memset.c \
		SRCS/str/ft_strchr.c \
		SRCS/str/ft_strdup.c \
		SRCS/str/ft_striteri.c \
		SRCS/str/ft_strjoin.c \
		SRCS/str/ft_strlcat.c \
		SRCS/str/ft_strlcpy.c \
		SRCS/str/ft_strlen.c \
		SRCS/str/ft_strmapi.c \
		SRCS/str/ft_strncmp.c \
		SRCS/str/ft_strnstr.c \
		SRCS/str/ft_strrchr.c \
		SRCS/str/ft_strtrim.c \
		SRCS/str/ft_substr.c \
        SRCS/lst/ft_lstadd_back_bonus.c \
        SRCS/lst/ft_lstadd_front_bonus.c \
        SRCS/lst/ft_lstclear_bonus.c \
        SRCS/lst/ft_lstdelone_bonus.c \
        SRCS/lst/ft_lstiter_bonus.c \
        SRCS/lst/ft_lstlast_bonus.c \
        SRCS/lst/ft_lstmap_bonus.c \
		SRCS/lst/ft_lstnew_bonus.c \
        SRCS/lst/ft_lstsize_bonus.c \
		$(addprefix SRCS/get_next_line/, $(SRCS_GNL)) \
		$(addprefix SRCS/ft_printf/, $(SRCS_PRINTF)) \

SRCS_GNL=\
		get_next_line.c \
		get_next_line_utils.c \

SRCS_PRINTF=\
		ft_printf.c \
		ft_printf_putnbr.c \
		ft_printf_putstr.c \

SRCS:= $(SRCS:%=$(SRCS_DIR)/%)

OBJS=$(SRCS:$(SRCS_DIR)/%.c=$(OBJS_DIR)/%.o)

INCS= ./INCS

DEPS= $(OBJS:.o=.d)

CC= cc

CFLAGS= -Werror -Wextra -Wall -MMD -MP

#------------------------------------------------------------------------------#
# 							USTENSILS									       #
#------------------------------------------------------------------------------#

RM= rm -rf

DIR_DUP = mkdir -p $(@D)

#------------------------------------------------------------------------------#
# 							RECIPE											   #
#------------------------------------------------------------------------------#

all:$(NAME)

-include $(DEPS)

$(NAME): $(OBJS) $(INCS)
	ar rcs $(NAME) $(OBJS)

$(OBJS_DIR)/%.o: %.c
	@$(DIR_DUP)
	$(CC) $(CFLAGS) -I$(INCS) -c -o $@ $<

clean:
	$(RM) $(OBJS_DIR)

fclean:clean
	$(RM) $(NAME)
	rm -f a.out

re:fclean all

.PHONY: all clean fclean re
