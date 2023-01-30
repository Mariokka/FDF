# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mokatova <mokatova@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/27 22:30:41 by mokatova          #+#    #+#              #
#    Updated: 2022/04/05 15:02:34 by mokatova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf
CFLAGS = -Wall -Wextra -Werror
#FLAGS = -framework OpenGL -framework AppKit -lm
FLAGS = -L/usr/include/X11/extensions -lX11 -lXext -lm
SRC = main.c input_check.c parse_map.c draw.c handle_keys.c
#INCL = libft/libft.a minilibx_macos/libmlx.a
INCL = libft/libft.a minilibx/libmlx_Linux.a
OBJ = $(SRC:.c=.o)

$(NAME): $(OBJ)
	@make -C libft/ all
#	@make -C minilibx_macos / libmlx.a
	@make -C minilibx / libmlx_Linux.a
	gcc $(CFLAGS) $(OBJ) $(INCL) $(FLAGS) -o $(NAME)
all: $(NAME)
clean: 
	rm -f $(OBJ)
	@make -C libft/ clean
#	@make -C minilibx_macos/ clean
	@make -C minilibx/ clean
fclean: clean
	rm -f $(NAME)
	@make -C libft / fclean
re: fclean all
.PHONY: all clean fclean re