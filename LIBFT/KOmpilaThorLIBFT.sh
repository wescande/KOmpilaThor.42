# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorLIBFT.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande                                   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/01 22:12:05 by wescande          #+#    #+#              #
#                                                     ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if [ "$1" == "" ]
then
echo "alias KOmpilaThorLIBFT='sh $0'"
else

EX=$(echo "$1" | sed 's/.*\/ex/ex/' | cut -c 1-4)
FONCTION=$(echo "$1" | sed 's/.*\///g')

echo '/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   KompilaThorLIBFT.compile                           :+:      :+:    :+:   */
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
#include "libft.h"
#define color(p) printf("\033[%dm", p)
#define RED 31
#define GRE 32
#define BLU 36
#define WHI 37




int		main(void)
{
	char	*nom;
	void	*v_ret;
	void	*v_ans;
	int		i_ret;
	int		i_ans;
	void	*v_ret_tmp;
	void	*v_ans_tmp;
	int		correct;
	int		i;
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


EXO="memset"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? == 0 ]
then
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	int val_send_10[8] = {0, 9, 32, 65, 65, 65, 176, 92};
	size_t val_send_11[8] = {5, 8, 4, 10, 0, 5, 7, 20};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 8)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("%d(""%c"") et %lu\\n" , val_send_10[i], val_send_10[i], val_send_11[i]);
		color(WHI);
		v_ans = '$EXO'(v_ans, val_send_10[i], val_send_11[i]);
		printf("%s = CORRECTION", (char*)v_ans);
		color(0);
		printf("\\n");
		v_ret = ft_'$EXO'(v_ret, val_send_10[i], val_send_11[i]);
		if (memcmp(v_ans, v_ret, val_send_11[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", (char*)v_ret); 
		color(0);
		printf("\\n");
		i++;
	}
		printf("\\n");
	if (correct == 0)
	{
		color(GRE);
		printf("Ex: %s\\n", nom);
		color(GRE);
		printf("<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("Ex: %s\\n", nom);
		color(RED);
		printf("<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo "function $EXO missing from the library"
fi

EXO="bzero"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? == 0 ]
then
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	size_t val_send_20[8] = {5, 8, 4, 10, 0, 5, 7, 20};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 8)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("%lu\\n" , val_send_20[i]);
		color(WHI);
		'$EXO'(v_ans, val_send_20[i]);
		printf("%s = CORRECTION", (char*)v_ans);
		color(0);
		printf("\\n");
		ft_'$EXO'(v_ret, val_send_20[i]);
		if (memcmp(v_ans, v_ret, val_send_20[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", (char*)v_ret); 
		color(0);
		printf("\\n");
		i++;
	}
		printf("\\n");
	if (correct == 0)
	{
		color(GRE);
		printf("Ex: %s\\n", nom);
		color(GRE);
		printf("<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("Ex: %s\\n", nom);
		color(RED);
		printf("<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo "function $EXO missing from the library"
fi

EXO="memcpy"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? == 0 ]
then
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	char val_send_30[8][50] = {"jesuisfirst", "\\200", "ab\\0cde", "", "pourquoi vous faites ça ?", "TEST5", "TEST6", "TEST7"};
	size_t val_send_31[8] = {10, 10, 10, 10, 0, 1, 5, 20};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 8)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s| & |%lu|\\n" , val_send_30[i], val_send_31[i]);
		color(WHI);
		v_ans = '$EXO'(v_ans, val_send_30[i], val_send_31[i]);
		printf("%s = CORRECTION", (char*)v_ans);
		color(0);
		printf("\\n");
		v_ret = ft_'$EXO'(v_ret, val_send_30[i], val_send_31[i]);
		if (memcmp(v_ans, v_ret, 100))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", (char*)v_ret); 
		color(0);
		printf("\\n");
		i++;
	}
		printf("\\n");
	if (correct == 0)
	{
		color(GRE);
		printf("Ex: %s\\n", nom);
		color(GRE);
		printf("<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("Ex: %s\\n", nom);
		color(RED);
		printf("<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo "function $EXO missing from the library"
fi

EXO="memccpy"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? == 0 ]
then
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	char val_send_40[8][50] = {"jesuisfirst", "\\200", "ab\\0cde", "", "pourquoi vous faites ça ?", "TEST5", "TEST6", "TEST7"};
	size_t val_send_41[8] = {20, 20, 20, 20, 20, 20, 20, 20};
	int		val_send_42[8] = {102, 40, 0, 45, 40, 84, 54, 1};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 8)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s| & |%d| & |%lu|\\n" , val_send_40[i], val_send_42[i], val_send_41[i]);
		color(WHI);
		v_ans_tmp = '$EXO'(v_ans, val_send_40[i], val_send_42[i], val_send_41[i]);
		printf("%s = CORRECTION", (char*)((!v_ans_tmp)? "NULL" : v_ans));
		color(0);
		printf("\\n");
		v_ret_tmp = ft_'$EXO'(v_ret, val_send_40[i], val_send_42[i], val_send_41[i]);
		if (!(!v_ans_tmp && !v_ret_tmp))
		{
			if (!v_ans_tmp || !v_ret_tmp || memcmp(v_ans, v_ret, 100))
			{
				color(RED);
				correct++;
			}
			else
				color(GRE);
		}
		else
			color(GRE);
		printf("%s = RESULT", (char*)((!v_ret_tmp)? "NULL" : v_ret)); 
		color(0);
		printf("\\n");
		i++;
	}
	printf("\\n");
	if (correct == 0)
	{
		color(GRE);
		printf("Ex: %s\\n", nom);
		color(GRE);
		printf("<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("Ex: %s\\n", nom);
		color(RED);
		printf("<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo "function $EXO missing from the library"
fi

EXO="memchr"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? == 0 ]
then
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	char	val_send_50[8][50] = {"rcarette", "memchrWescande", "N", "TEST6", "Born_to_code", "TEST7", "", "Coucou"};
	int		val_send_51[8] = {53, 87, 78, 83, 81, 55, 111};
	size_t	val_send_52[8] = {20, 20, 20, 20, 20, 20, 20, 20};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 8)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s| & |%d| & |%lu|\\n" , val_send_50[i], val_send_51[i], val_send_52[i]);
		color(WHI);
		v_ans_tmp = '$EXO'(val_send_50[i], val_send_51[i], val_send_52[i]);
		printf("%s = CORRECTION", (char*)(v_ans_tmp));
		color(0);
		printf("\\n");
		v_ret_tmp = ft_'$EXO'(val_send_50[i], val_send_51[i], val_send_52[i]);
		if (!(!v_ans_tmp && !v_ret_tmp))
		{
			if (!v_ans_tmp || !v_ret_tmp || memcmp(v_ans_tmp, v_ret_tmp, 50))
			{
				color(RED);
				correct++;
			}
			else
				color(GRE);
		}
		else
			color(GRE);
		printf("%s = RESULT", (char*)(v_ret_tmp)); 
	printf("\\n");
		i++;
	}
	printf("\\n");
	if (correct == 0)
	{
		color(GRE);
		printf("Ex: %s\\n", nom);
		color(GRE);
		printf("<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("Ex: %s\\n", nom);
		color(RED);
		printf("<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo "function $EXO missing from the library"
fi

EXO="strlen"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? == 0 ]
then
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	char	val_send_strlen[5][50] = {"", "Romain && William", "Si celle-ci est fail bah miar de dieu !", "Code", "POPOPOPO\\0O"};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 5)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s\\n" , val_send_strlen[i]);
		i_ret = ft_'$EXO'(val_send_strlen[i]);
		i_ans = '$EXO'(val_send_strlen[i]);
		printf("%d = CORRECTION\\n",i_ans);
		if (i_ret != i_ans)
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%d = RESULT\\n",i_ret);
		color(0);	
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("Ex: %s\\n", nom);
		color(GRE);
		printf("<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("Ex: %s\\n", nom);
		color(RED);
		printf("<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> KOMP_LIBFT.c
else
	echo "function $EXO missing from the library"
fi

EXO="strdup"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? == 0 ]
then
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	char	val_send_strdup[3][50] = {"", "Hello World WESCANDE Mouahaha", "rcarette && wescande"};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 3)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("|%s\\n" , val_send_strdup[i]);
		v_ans = (void *) '$EXO'(val_send_strdup[i]);
		v_ret = (void *) ft_'$EXO'(val_send_strdup[i]);
		printf("%s = CORRECTION\\n",(char *)v_ans);
		if (strcmp((char *)v_ans,(char *)v_ret) != 0)
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULTAT\\n",(char *)v_ret);
		color(0);
		printf("\\n");
		i++;
	}
		if (correct == 0)
		{
			color(GRE);
			printf("Ex: %s\\n", nom);
			color(GRE);
			printf("<====================SUCCESS !======================>\\n");
		}
		else
		{
			color(RED);
			printf("Ex: %s\\n", nom);
			color(RED);
			printf("<====================FAIL ! ! ! !======================>\\n");
		}
		color(0);
		printf("\\n");
' >> KOMP_LIBFT.c
else
	echo "function $EXO missing from the library"
fi
	

echo "
	return (0);
}" >> KOMP_LIBFT.c

make re
make clean

gcc -Wall -Wextra -Werror KOMP_LIBFT.c libft.a -o ./.KOmpilaThorLIBFT.compile

./.KOmpilaThorLIBFT.compile | less

rm ./.KOmpilaThorLIBFT.compile

#norminette -R CheckForbiddenSourceHeader $1

fi
