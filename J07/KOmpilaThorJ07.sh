# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorJ05.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande et nmuller                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/06 11:11:59 by wescande          #+#    #+#              #
#                                                     ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if [ "$1" == "" ]
then
echo "alias KOmpilaThorJ07='sh $0'"
else

EX=$(echo "$1" | sed 's/.*\/ex/ex/' | cut -c 1-4)
FONCTION=$(echo "$1" | sed 's/.*\///g')

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


echo '/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   KompilaThorJ05.compile                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wescande <wescande@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 12:10:30 by wescande          #+#    #+#             */
/*   Updated: 2016/08/08 12:10:32 by wescande         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define color(p) printf("\033[%dm", p)
#define RED 31
#define GRE 32
#define BLU 36
#define WHI 37

void	ft_putnbr(int nb);

void	ft_putstr(char *str);

int		ft_atoi(char *str);



char *ft_strdup(char *src);





















int		main(void)
{
	\c' > J07.c


if [ "$EX" = "ex00" ]
then
	EXO="ft_strdup"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 00 : %s\\n", nom);
	if (!strcmp("'"$FONCTION"'","'$EXO'.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		color(31);
		correct++;
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\\n");
	char val_send[][45] = {"ilecl;;[];=-0123", "fesGF^4", "89\\ff\\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56"};
	char val_send1[][45] = {"ilecl;;[];=-0123", "fesGF^4", "89\\ff\\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56"};
	char *ret;
	char *ans;
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s\\n" , val_send[i]);
		color(WHI);
		ans = strdup(val_send[i]);
		printf("%s = CORRECTION(%s)", ans, val_send[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send1[i]);
		if (strcmp(ret, ans) || strcmp(val_send[i], val_send1[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%s =     RESULT(%s)",ret, val_send1[i]); 
		color(0);
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\\n<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J07.c
fi

if [ "$EX" = "ex01" ]
then
	EXO="ft_range"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 01 : %s\\n", nom);
	if (!strcmp("'"$FONCTION"'","'$EXO'.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		color(31);
		correct++;
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\\n");
	int val_send[45] = {-20,0,33,465,-6};
	int val_send1[45] = {60,34,2,423,10};
	int *ans;
	int *ret;
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s, %s et %d\\n" , val_send[i], val_send2[i], val_send3[i]);
		color(WHI);
		strcpy(val_send1[i], val_send[i]);
		ans = strlcat(val_send[i], val_send2[i], val_send3[i]);
		printf("%d = CORRECTION (%s)", ans , val_send[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send1[i], val_send2[i], val_send3[i]);
		if (ret != ans || strcmp(val_send[i], val_send1[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%d = RESULT (%s)", ret, val_send1[i]); 
		color(0);
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\\n<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J07.c
fi

if [ "$EX" = "ex01" ]
then
	EXO="ft_range"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 01 : %s\\n", nom);
	if (!strcmp("'"$FONCTION"'","'$EXO'.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		color(31);
		correct++;
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\\n");
	char val_send[][45] = {"ilecl;;[];=-0123", "fesGF^4", "89\\ff\\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56"};
	char val_send1[][45] = {"", "", "", "", "", "", ""};
	char val_send2[][45] = {"5", "   \\n++rewed", "\t\t456pipo","[]koljejt|||||", "poule", "789*1", "-12ethop", "<<chevre"};
	unsigned int val_send3[] = {12, 6, 5, 2358, 0, 554561, 2, 36};
	unsigned int ans;
	unsigned int ret;
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s, %s et %d\\n" , val_send[i], val_send2[i], val_send3[i]);
		color(WHI);
		strcpy(val_send1[i], val_send[i]);
		ans = strlcpy(val_send[i], val_send2[i], val_send3[i]);
		printf("%d = CORRECTION (%s)", ans , val_send[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send1[i], val_send2[i], val_send3[i]);
		if (ret != ans || strcmp(val_send[i], val_send1[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%d = RESULT     (%s)", ret, val_send1[i]); 
		color(0);
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\\n<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J07.c
fi

if [ "$EX" = "ex20" ]
then
	EXO="ft_putnbr_base"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 19 : %s\\n", nom);
	if (!strcmp("'"$FONCTION"'","'$EXO'.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		color(31);
		correct++;
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\\n");
	int val_send[] = {12, 456, -100, 65, 2358, 0, 554561, 2, 36, 2147483647, -2147483648};
	char val_send1[][45] = {"01", "0123456789ABCDEF", "RTYUF",  "89f\\n7", "%", "2147@483647", "-21474 83648", "+45632", "# @{}", "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ", "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"};
	char ans[][45] = {"|1100|" , "|1C8|" , "|-FRR|" , "|f\\n8|" , "||" , "||", "||" , "||" , "| @ |" , "|ZIKOZJ|", "|-ZIKOZK|"};
	int i = 0;
	while (i < 11)
	{
		printf("Test #%d avec ", i);
		color(BLU);
		printf("%d et %s\\n" , val_send[i], val_send1[i]);
		color(WHI);
		printf("%s = CORRECTION", ans[i]);
		color (BLU);
		printf("\\n|");
		fflush(stdout);
		'$EXO'(val_send[i], val_send1[i]);
		printf("|\\n");
		color(0);
		i++;
	}
	if (correct == 0)
	{
		color(BLU);
		printf("\\n<====================INDETERMINATE!======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J07.c
fi


echo "
	return (0);
}" >> J07.c

gcc -Wall -Wextra -Werror J07.c ft_putchar_KOmpilaThor.c $1 -o ./.KOmpilaThorJ07.compile

./.KOmpilaThorJ07.compile

rm ./.KOmpilaThorJ07.compile ft_putchar_KOmpilaThor.c

norminette -R CheckForbiddenSourceHeader $1

fi

