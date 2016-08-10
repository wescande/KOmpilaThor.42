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

DOSSIER=$(echo "$1" | sed "s/$EX.*/$EX/")

PUTCHAR=$(cat "$1" | grep 'ft_putchar' | head -n 1 | cut -c 1)

if [ "$PUTCHAR" = "v" ]
then
echo '/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar_KOmpilaThor.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wescande <wescande@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 12:10:30 by wescande          #+#    #+#             */
/*   Updated: 2016/08/08 12:10:32 by wescande         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}
' > ft_putchar_KOmpilaThor.c
else
echo '/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar_KOmpilaThor.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wescande <wescande@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 12:10:30 by wescande          #+#    #+#             */
/*   Updated: 2016/08/08 12:10:32 by wescande         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

int		ft_putchar(char c)
{
	write(1, &c, 1);
	return (0);
}
' > ft_putchar_KOmpilaThor.c
fi


if [ "$EX" = "ex00" ]
then
	echo "Exercice 00 Affichage des fichiers dans $DOSSIER"
	find $DOSSIER | sed "s/$EX//"
	echo "Lancement du script"
	sh $DOSSIER/libft_creator.sh
	echo "Affichage des fichiers dans $DOSSIER"
	find $DOSSIER | sed "s/$EX//"
fi

if [ "$EX" = "ex01" ]
then
	echo "Exercice 01 dans $DOSSIER"
	echo "Compilation :"
	gcc -Wall -Wextra -Werror ft_print_program_name.c ft_putchar_KOmpilaThor.c -o ./.KOmpilaThorJ06.compile
	echo "Affichage du nom du programme (./.KOmpilaThorJ06.compile)"
	./.KO

fi


# ./.KOmpilaThorJ06.compile

 rm ./.KOmpilaThorJ06.compile ft_putchar_KOmpilaThor

norminette -R CheckForbiddenSourceHeader $DOSSIER


fi
