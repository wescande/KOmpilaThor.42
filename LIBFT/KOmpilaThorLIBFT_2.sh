# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorLIBFT_2.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/02 16:52:44 by wescande          #+#    #+#              #
#    Updated: 2016/11/02 16:52:57 by wescande         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

make re
make clean

echo '/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   KompilaThorLIBFT.compile                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: A wonderful team                           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 12:10:30 by wescande          #+#    #+#             */
/*                                                    ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//#include <bsd/string.h>
#include <ctype.h>
#include "libft.h"
#define color(p) printf("\033[%dm", p)
#define RED 31
#define GRE 32
#define BLU 36
#define WHI 37
#define YEL 33


void	print_function(char *name, int correct)
{
	if (correct == 0)
	{
		color(GRE);
		printf("<======================SUCCESS !=======================>\\n");
	}
	else
	{
		if (correct < 0)
		{
			color(RED);
			printf("Function: %s is missing from the library\\n", name);
		}
		else if (correct == 50)
		{
			color(YEL);
			printf("<=================YOU HAVE TO CHECK !==================>\\n");
		}
		else
		{
			color(RED);
			printf("<====================FAIL ! ! ! !======================>\\n");
		}
	}
	color(0);
	printf("\\n");
}

void	fn_striter(char *s)
{
	printf("%c", (char)toupper(*s));
}

void	fn_striteri(unsigned int i, char *s)
{
	printf("%c(%d)", (char)tolower(*s), i);
}

char	fn_strmap(char c)
{
	return((char)toupper((int)c));
}

int		main(void)
{
	char	*nom;
	void	*v_ret;
	void	*v_ans;
	int		i_ret;
	int		i_ans;
	void	*v_ret_tmp;
	void	*v_ans_tmp;
	char	*s_ret;
	int		correct;
	int		i;
	int		j;
	(void) i;
	(void) j;
	(void) v_ret;
	(void) v_ans;
	(void) v_ret_tmp;
	(void) v_ans_tmp;
	(void) i_ret;
	(void) i_ans;
	(void) correct;
	if (!(nom = (char*)malloc(sizeof(char) * 45)))
		return (1);
	nom[0] = '\0';
	printf("\\n\\n\\n");
	color(RED);
	printf("Bienvenu dans le KOmpilaThor !");
	printf("\\n");
	color(BLU);
	printf("Utilisation à vos risques et périls.");
	printf("\\n\\n\\n");
	color(0);
	\c' > KOMP_LIBFT.c


EXO="memalloc"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	print_function(nom, 50);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="memdel"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	print_function(nom, 50);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strnew"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	size_t	val_send_'$EXO'[5] = {5, 4, 0, 10, 30};
	i = 0;
	correct = 0;
	while (i < 5)
	{
		s_ret = ft_'$EXO'(val_send_'$EXO'[i]);
		j = 0;
		while (j < (int)val_send_'$EXO'[i])
		{
			if (*s_ret)
			{
				printf("Test #%d fait avec les valeurs : ", i);
				color(BLU);
				printf("|%lu|\\n", val_send_'$EXO'[i]);
				color(0);
				correct++;
				break;
			}
			++s_ret;
			++j;
		}
		++i;
	}
	print_function(nom, correct);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strdel"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	print_function(nom, 50);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strclr"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	char	val_send_'$EXO'[5][50] = {"", "sv sdqsd fds f", "\200", "WTF", "p"};
	i = 0;
	correct = 0;
	while (i < 5)
	{
		j = strlen(val_send_'$EXO'[i]);
		ft_'$EXO'(val_send_'$EXO'[i]);
		memcpy(s_ret, val_send_'$EXO'[i], j);
		while (j)
		{
			if (*s_ret)
			{
				printf("Test #%d fait avec les valeurs : ", i);
				color(BLU);
				printf("|%s|\\n", val_send_'$EXO'[i]);
				color(0);
				correct++;
				break;
			}
			++s_ret;
			--j;
		}
		++i;
	}
	print_function(nom, correct);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="striter"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	char	val_send_'$EXO'[5][50] = {"", "sv sdqsd fds f", "\200", "WTF", "p"};
	void (*ma_f_'$EXO')(char *);
	ma_f_'$EXO' = fn_'$EXO';
	i = 0;
	correct = 0;
	while (i < 5)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s|", val_send_'$EXO'[i]);
		printf("\\n");
		color(YEL);
		ft_'$EXO'(val_send_'$EXO'[i], ma_f_'$EXO');
		color(WHI);
		printf("\\n");
		color(0);
		++i;
	}
	print_function(nom, 50);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="striteri"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	char	val_send_'$EXO'[5][50] = {"", "sv sdqsd fds f", "\200", "WTF", "p"};
	void (*ma_f_'$EXO')(unsigned int, char *);
	ma_f_'$EXO' = fn_'$EXO';
	i = 0;
	correct = 0;
	while (i < 5)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s|", val_send_'$EXO'[i]);
		printf("\\n");
		color(YEL);
		ft_'$EXO'(val_send_'$EXO'[i], ma_f_'$EXO');
		printf("\\n");
		color(0);
		++i;
	}
	print_function(nom, 50);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strmap"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	char	val_send_'$EXO'[5][50] = {"", "sv sdqsd fds f", "\200", "WTF", "p"};
	char (*ma_f_'$EXO')(char);
	ma_f_'$EXO' = fn_'$EXO';
	i = 0;
	correct = 0;
	while (i < 5)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s|", val_send_'$EXO'[i]);
		printf("\\n");
		color(YEL);
		printf("1111\\n");
		s_ret = ft_'$EXO'(val_send_'$EXO'[i], ma_f_'$EXO');
		printf("222\\n");
		printf("%s", s_ret);
		printf("\\n");
		color(0);
		++i;
	}
	print_function(nom, 50);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi



echo '
	printf("\\n");
	printf("Merci de vous être servi du KOmpilaThor !");
	printf("\\n");
	free(nom);
	return (0);
}' >> KOMP_LIBFT.c


echo ""
echo "COMPILATION :"
gcc -g -Wall -Wextra -Werror KOMP_LIBFT.c libft.a -o ./.KOmpilaThorLIBFT.compile
echo "Done"

echo ""
echo "EXECUTION :"
./.KOmpilaThorLIBFT.compile
echo "Done"

echo ""
echo "NETTOYAGE :"
#rm ./.KOmpilaThorLIBFT.compile KOMP_LIBFT.c libft.a
echo "Done"

#norminette -R CheckForbiddenSourceHeader $1

#fi
