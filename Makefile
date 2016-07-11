# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rojones <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/07/11 17:28:54 by rojones           #+#    #+#              #
#    Updated: 2016/07/11 17:30:54 by rojones          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_select 
CCFLAGS = gcc -Wall -Werror -Wextra -g3
OBJ =  
MAKELIB = make -C libft
MAKELIBCLEAN = make -C libft clean

$(NAME) : $(OBJ)
	$(MAKELIB)
	$(CCFLAGS) -lcurses -Llibft -lft -o $(NAME) ft_select.c $(OBJ)

all : $(NAME)

clean :
	/bin/rm -f $(OBJ)

fclean : clean
	/bin/rm -f $(NAME)

re : fclean all
