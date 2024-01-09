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

include source.mk

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
