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

clean:
	$(RM) $(OBJS_DIR)

fclean:clean
	$(RM) $(NAME)
	rm -f a.out

re:fclean all

.PHONY: all clean fclean re
