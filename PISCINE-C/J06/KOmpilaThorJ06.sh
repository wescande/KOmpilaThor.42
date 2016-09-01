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

norminette -R CheckForbiddenSourceHeader $DOSSIER

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
echo "Le script ne fonctionne pas sur ex00"
	#	echo "Exercice 00 Affichage des fichiers dans $DOSSIER"
#	find $DOSSIER | sed "s/$EX//"
#	echo "Lancement du script"
#	cd $DOSSIER
#	sh libft_creator.sh
#	echo "Affichage des fichiers dans $DOSSIER"
#	ls -l | grep "*.o"
#	ls -l | grep "libft.a"
#	cd ..
fi

if [ "$EX" = "ex01" ]
then
	echo "Exercice 01 dans $DOSSIER"
	echo "Compilation :"
	gcc -Wall -Wextra -Werror $1 ft_putchar_KOmpilaThor.c -o ./.KOmpilaThorJ06.compile
	echo "Affichage du nom du programme (./.KOmpilaThorJ06.compile)"
	./.KOmpilaThorJ06.compile
	echo ""
fi

if [ "$EX" = "ex02" ]
then
	echo "Exercice 02 dans $DOSSIER"
	echo "Compilation :"
	gcc -Wall -Wextra -Werror $1 ft_putchar_KOmpilaThor.c -o ./.KOmpilaThorJ06.compile
	echo "Affichage des parametres dans l'ordre (A B C D E F G FFFGDHE)"
	./.KOmpilaThorJ06.compile A B C D E F G FFFGDHE
fi

if [ "$EX" = "ex03" ]
then
	echo "Exercice 03 dans $DOSSIER"
	echo "Compilation :"
	gcc -Wall -Wextra -Werror $1 ft_putchar_KOmpilaThor.c -o ./.KOmpilaThorJ06.compile
	echo "Affichage des parametres dans l'ordre inverse (A B C D E F G FFFGDHE >> FFGDHE G F E D C B A)"
	./.KOmpilaThorJ06.compile A B C D E F G FFFGDHE
fi

if [ "$EX" = "ex04" ]
then
	echo "Exercice 04 dans $DOSSIER"
	echo "Compilation :"
	gcc -Wall -Wextra -Werror $1 ft_putchar_KOmpilaThor.c -o ./.KOmpilaThorJ06.compile
	echo "Affichage des parametres dans l'ordre ascii 'je A a z Z suis pas trie ~!@ io'"
	./.KOmpilaThorJ06.compile je suis pas trie ~!@ io A a z Z 
fi

rm ./.KOmpilaThorJ06.compile ft_putchar_KOmpilaThor.c
norminette -R CheckForbiddenSourceHeader $DOSSIER
fi
