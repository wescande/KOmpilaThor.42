#bin\sh
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

if [[ $# -eq 0 || $# -ge 4 ]]
then
	echo "usage : $0 Fichier_a_compiler [source]]"
	echo "        $0 [-R = BYEBYE]"
	exit 1
fi

if [ $1 = "-R" ]
then
	echo "BYEBYE"
	rm -f $0
	exit 0
fi

PUTCHAR=$(cat $1 | grep "ft_putchar" | head -n 1 | cut -c 1)

echo " 
#include <unistd.h>
" > .KOmpilaThor_main.c
if [ "$PUTCHAR" = "v" ]
then
	echo "
	void	ft_putchar(char c)
	{
		write(1, &c, 1);
	}" >> .KOmpilaThor_main.c
else
	echo "
	int		ft_putchar(char c)
	{
		write(1, &c, 1);
		return (0);
	}" >> .KOmpilaThor_main.c
fi

echo "
#include "'"'$1'"'"
" >> .KOmpilaThor_main.c

#recup nom fonction
NOM_FONCTION=$(echo $1 | sed -e 's/.*\///' -e 's/\.c$//' | tr -d "\n")
#recupe type variable
PARAMETERS=$(cat $1 | grep $NOM_FONCTION\( | head -n 1 | sed -e 's/.*(//' -e 's/)$//' | tr "," "\n" | sed -e 's/$/;/' -e 's/^ /	/')
if [ "$PARAMETERS" != "void;" ]
then
	INITPARAM=$(echo "$PARAMETERS" | sed "s/\*//g")
	ASSIGNPARAM=$(echo "$INITPARAM" | sed -e 's/^	//' -e 's/ /	/' -e 's/;$/ = '$2'/' | cut -f 2 | sed 's/$/;/')
	VARIABLE=$(echo "$PARAMETERS" | sed -e 's/^	//' -e 's/ /	/' -e 's/;/, /' -e 's/\*/\&/g' | cut -f 2 | sed 's/, $//' | tr -d "\n")
fi
echo "
int	main()
{
	$INITPARAM

	$ASSIGNPARAM
	$NOM_FONCTION($VARIABLE);
	return (0);
}" >> .KOmpilaThor_main.c

gcc -Wall -Wextra -Werror -o .KOmpilaThor_main.c.compile .KOmpilaThor_main.c

./.KOmpilaThor_main.c.compile

rm .KOmpilaThor_main.c .KOmpilaThor_main.c.compile


echo ""

norminette -R CheckForbiddenSourceHeader $1
