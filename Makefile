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
# 							VARIABLES										   #
#------------------------------------------------------------------------------#

SRCS_DIR= ./SRCS

include source.mk

SRCS:= $(SRCS:%=$(SRCS_DIR)/%)

OBJS_DIR= ./OBJS

OBJS=$(SRCS:$(SRCS_DIR)/%.c=$(OBJS_DIR)/%.o)

INCS= ./INCS

DEPS= $(OBJS:.o=.d)


#------------------------------------------------------------------------------#
# 							COMMANDS									       #
#------------------------------------------------------------------------------#

CC= cc

CFLAGS= -Werror -Wextra -Wall -MMD -MP

RM= rm -rf

CFLEAKS = -g3

CFSIGSEV = -fsanitize=address

DIR_DUP= mkdir -p $(@D)

AR = ar rcs

MAKEFLAGS += --no-print-directory

#------------------------------------------------------------------------------#
# 							RULES											   #
#------------------------------------------------------------------------------#

all:$(NAME)

-include $(DEPS)

$(NAME): $(OBJS) $(INCS)
	$(AR) $(NAME) $(OBJS)

$(OBJS_DIR)/%.o: %.c
	@$(DIR_DUP)
	$(CC) $(CFLAGS) -I$(INCS) -c $< -o $@

valgrind:
	$(MAKE) CFLAGS="$(CFLAGS) $(CFLEAKS)"

fsanitize:
	$(MAKE) CFLAGS="$(CFLAGS) $(CFSIGSEV)"

clean:
	$(RM) $(OBJS_DIR)

fclean:clean
	$(RM) $(NAME)
	rm -f a.out

re:fclean all

.PHONY: all clean fclean re

# Colors
BLACK=\033[30m
RED=\033[31m
GREEN=\033[32m
YELLOW=\033[33m
BLUE=\033[34m
PURPLE=\033[35m
CYAN=\033[36m
WHITE=\033[37m

# Text
ERASE=\033[2K\r
RESET=\033[0m
BOLD=\033[1m
FAINT=\033[2m
ITALIC=\033[3m
UNDERLINE=\033[4m