#\bin\sh
# ########################################################################## #
#                                                                            #
#                                                        :::      ::::::::   #
#   KOmpliaThor                                        :+:      :+:    :+:   #
#                                                    +:+ +:+         +:+     #
#   Created: on D02                                +#+  +:+       +#+        #
#                                                +#+#+#+#+#+   +#+           #
#   By: wescande and nmuller                          #+#    #+#             #
#                                                    ###   ########.fr       #
#                                                                            #
# ########################################################################## #

if [[ $# -eq 0 ]]
then
	echo "usage : $0 Fichier_a_compiler [[argument]...]\n"
	echo "option: -m  ajouter un main"
	echo "        -nb afficher le int avant et apres"
	echo "        -v  verbose"
	exit 1
fi

bl_main=0
nb_args=0
nom_fichier=pasbien
affichage_nombre=0
AFFICHAGE=""
verbose=0

for param in "$@"
do
	if [ $param = "-m" ]
	then
		bl_main=1
	else
		if [ $param = "-nb" ]
		then
			affichage_nombre=1
		else
			if [ $param = "-v" ]
			then
				verbose=1
			else
				if [[ $param =~ .*\.c ]]
				then
					nom_fichier=$param
				else
					args[nb_args]=$param
					((nb_args++)) 
				fi
			fi
		fi
	fi
done

if [ $nom_fichier = "pasbien" ]
then
	echo "aucun fichier .c specifie"
	echo "
	OH! you touch my tralala !"
	exit 1
fi

NORME=$(norminette -R CheckForbiddenSourceHeader $nom_fichier)

echo " 
#include <unistd.h>

int ft_putchar(char c)
{
	write(1, &c, 1);
	return (0);
}

void	ft_putnbr(int nb)
{
	int length;
	int writing;
	int digit;

	writing = 0;
	if (nb < 0)
	{
		ft_putchar('-');
		nb = -1 * nb;
	}
	length = 10000;
	while (length >= 1)
	{
		if (nb >= (length - 1) || writing)
		{
			writing = 1;
			digit = nb / length;
			ft_putchar(digit + 48);
			nb = nb % length;
		}
		length /= 10;
	}
}" > .KOmpilaThor_main.c

if [ $bl_main ]
then


NOM_FONCTION=$(echo $nom_fichier | sed -e 's/.*\///' -e 's/\.c$//' | tr -d "\n")
PROTOTYPE=$(cat $nom_fichier| grep $NOM_FONCTION\( | head -n 1 )
PARAMETERS=$(echo "$PROTOTYPE" | sed -e 's/.*(//' -e 's/)*$//' | tr "," "\n" | sed -e 's/$/;/' -e 's/^ /	/')
INITPARAM=""
ASSIGNPARAM=""
VARIABLE=""
if [ "$PARAMETERS" != "void;" ]
then
	INITPARAM=$(echo "$PARAMETERS" | sed "s/\*//g")
	i=0
	((nb_args--))
	while [ $i -le $nb_args ]
	do
		count=$(echo "$i + 1" | bc)
		ASSIGNPARAM=$(echo "$ASSIGNPARAM""\n	" | sed -n '/^$/!p')$(echo "$INITPARAM" | sed -n "${count}p"| sed  -e 's/^	//' -e 's/ /	/' -e 's/;$/ = '"${args[$i]}"'/' | cut -f 2 | sed 's/$/;/')
		((i++))
	done
	
	VARIABLE=$(echo "$PARAMETERS" | sed -e 's/^	//' -e 's/ /	/' -e 's/;/, /' -e 's/\*/\&/g' | cut -f 2 | tr -d "\n" | sed 's/, $//' | tr -d "\n")
	if [ $affichage_nombre -eq 1 ]
	then
		AFFICHAGE=$(echo "ft_putnbr($VARIABLE" | sed -e 's/&//g' -e 's/,.*$/);/g' | tr -d "\n" )
	fi
fi

echo "$PROTOTYPE;

int	main()
{
	$INITPARAM

	$ASSIGNPARAM
	$AFFICHAGE
	ft_putchar('V');
	ft_putchar('"'\\n'"');
	$NOM_FONCTION($VARIABLE);
	ft_putchar('"'\\n'"');
	ft_putchar('^');
	$AFFICHAGE
	return (0);
}" >> .KOmpilaThor_main.c
fi

echo $nom_fichier


gcc -Wall -Wextra -Werror $nom_fichier .KOmpilaThor_main.c -o .KOmpilaThor_main.c.compile

if [ $bl_main -eq 0 ]
then
	if [ $verbose -eq 1 ]
	then
		echo "|"
		echo "==============="
		echo "==============="
		echo "|"
		cat -n .KOmpilaThor_main.c
		echo "|"
		echo "==============="
		echo "==============="
		echo "|"
	fi
	./.KOmpilaThor_main.c.compile "$VARIABLE" 
fi

rm .KOmpilaThor_main.c .KOmpilaThor_main.c.compile
