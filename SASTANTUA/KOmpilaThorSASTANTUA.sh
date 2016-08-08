# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorSASTANTUA.sh                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/06 16:58:47 by wescande          #+#    #+#              #
#    Updated: 2016/08/08 10:55:17 by wescande         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

gcc -Wall -Wextra -Werror -o ./.sastantua main.c ft_putchar.c 0_sastantua/ex00/sastantua.c

./.sastantua

rm ./.sastantua 

norminette -R CheckForbiddenSourceHeader 0_sastantua/ex00/sastantua.c
