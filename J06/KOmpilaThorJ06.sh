# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorJ06.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/10 10:29:42 by wescande          #+#    #+#              #
#                                                     ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


if [ "$1" == "" ]
then
echo "alias KOmpilaThorJ06='sh $0'"
else
EX=$(echo "$1" | sed 's/.*\/ex/ex/' | cut -c 1-4)

if [ "$EX" = "ex00" ]
then

fi


gcc -Wall -Wextra -Werror J06.c ft_putchar_KOmpilaThor.c $1 -o ./.KOmpilaThorJ06.compile

./.KOmpilaThorJ06.compile

rm ./.KOmpilaThorJ06.compile ft_putchar_KOmpilaThor

norminette -R CheckForbiddenSourceHeader $1


fi
