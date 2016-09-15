# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorLIBFT.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: A Wonderful team                           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/01 22:12:05 by wescande          #+#    #+#              #
#                                                     ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#if [ $1 == "" ]
#then
#echo "alias KOmpilaThorLIBFT='sh $0'"
#else

make re
make clean
#EX=$(echo "$1" | sed 's/.*\/ex/ex/' | cut -c 1-4)
#FONCTION=$(echo "$1" | sed 's/.*\///g')

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
#include <bsd/string.h>
#include "libft.h"
#define color(p) printf("\033[%dm", p)
#define RED 31
#define GRE 32
#define BLU 36
#define WHI 37


void	print_function(char *name, int correct)
{
	if (correct == 0)
	{
		color(GRE);
		printf("<======================SUCCESS !=======================>\\n");
	}
	else
	{
		color(RED);
		if (correct < 0)
			printf("Function: %s is missing from the library\\n", name);
		color(RED);
		printf("<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
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
	int		correct;
	int		i;
	(void) i;
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


EXO="memset"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	int val_send_10[8] = {0, 9, 32, 65, 65, 65, 176, 92};
	size_t val_send_11[8] = {5, 8, 4, 10, 0, 5, 7, 20};
	i = 0;
	while (i < 8)
	{
		v_ans = '$EXO'(v_ans, val_send_10[i], val_send_11[i]);
		v_ret = ft_'$EXO'(v_ret, val_send_10[i], val_send_11[i]);
		if (memcmp(v_ans, v_ret, val_send_11[i]))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			printf("\\n");
			color(BLU);
			printf("%d(""%c"") et %lu\\n" , val_send_10[i], val_send_10[i], val_send_11[i]);
			color(WHI);
			printf("%s = CORRECTION", (char*)v_ans);
			color(0);
			color(RED);
			printf("%s = RESULT", (char*)v_ret); 
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="bzero"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	size_t val_send_20[8] = {5, 8, 4, 10, 0, 5, 7, 20};
	i = 0;
	while (i < 8)
	{
		'$EXO'(v_ans, val_send_20[i]);
		ft_'$EXO'(v_ret, val_send_20[i]);
		if (memcmp(v_ans, v_ret, val_send_20[i]))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("%lu\\n" , val_send_20[i]);
			color(WHI);
			printf("%s = CORRECTION", (char*)v_ans);
			color(0);
			printf("\\n");
			color(RED);
			printf("%s = RESULT", (char*)v_ret); 
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="memcpy"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	char val_send_30[8][50] = {"jesuisfirst", "\\200", "ab\\0cde", "", "pourquoi vous faites ça ?", "TEST5", "TEST6", "TEST7"};
	size_t val_send_31[8] = {10, 10, 10, 10, 0, 1, 5, 20};
	i = 0;
	while (i < 8)
	{
		v_ans = '$EXO'(v_ans, val_send_30[i], val_send_31[i]);
		v_ret = ft_'$EXO'(v_ret, val_send_30[i], val_send_31[i]);
		if (memcmp(v_ans, v_ret, 100))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("|%s| & |%lu|\\n" , val_send_30[i], val_send_31[i]);
			color(WHI);
			printf("%s = CORRECTION", (char*)v_ans);
			color(0);
			printf("\\n");
			color(RED);
			printf("%s = RESULT", (char*)v_ret); 
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="memccpy"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
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
	i = 0;
	while (i < 8)
	{
		v_ans_tmp = '$EXO'(v_ans, val_send_40[i], val_send_42[i], val_send_41[i]);
		v_ret_tmp = ft_'$EXO'(v_ret, val_send_40[i], val_send_42[i], val_send_41[i]);
		if (!(!v_ans_tmp && !v_ret_tmp))
		{
			if (!v_ans_tmp || !v_ret_tmp || memcmp(v_ans, v_ret, 100))
			{
				printf("Test #%d fait avec les valeurs : ", i);
				color(BLU);
				printf("|%s| & |%d| & |%lu|\\n" , val_send_40[i], val_send_42[i], val_send_41[i]);
				color(WHI);
				printf("%s = CORRECTION", (char*)((!v_ans_tmp)? "NULL" : v_ans));
				color(0);
				printf("\\n");
				color(RED);
				printf("%s = RESULT", (char*)((!v_ret_tmp)? "NULL" : v_ret)); 
				color(0);
				printf("\\n");
				correct++;
			}
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="memmove"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	char val_send_540[8][50] = {"jesuisfirst", "\\200", "ab\\0cde", "", "pourquoi vous faites ça ?", "TEST5", "TEST6", "TEST7"};
	size_t	val_send_541[8] = {20, 20, 20, 20, 20, 20, 20, 20};
	i = 0;
	while (i < 8)
	{
		v_ans_tmp = '$EXO'(v_ans, val_send_540[i], val_send_541[i]);
		v_ret_tmp = ft_'$EXO'(v_ret, val_send_540[i], val_send_541[i]);
		if (!(!v_ans_tmp && !v_ret_tmp))
		{
			if (!v_ans_tmp || !v_ret_tmp || memcmp(v_ans, v_ret, 100))
			{
				printf("Test #%d fait avec les valeurs : ", i);
				color(BLU);
				printf("|%s| & |%lu|\\n" , val_send_540[i], val_send_541[i]);
				color(WHI);
				printf("%s = CORRECTION", (char*)((!v_ans_tmp)? "NULL" : v_ans));
				color(0);
				printf("\\n");
				color(RED);
				printf("%s = RESULT", (char*)((!v_ret_tmp)? "NULL" : v_ret)); 
				color(0);
				printf("\\n");
				correct++;
			}
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="memchr"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	correct = 0;
	char	val_send_50[8][50] = {"rcarette", "memchrWescande", "N", "TEST6", "Born_to_code", "TEST7", "", "Coucou"};
	int		val_send_51[8] = {53, 87, 78, 83, 81, 55, 111};
	size_t	val_send_52[8] = {20, 20, 20, 20, 20, 20, 20, 20};
	i = 0;
	while (i < 8)
	{
		v_ans_tmp = '$EXO'(val_send_50[i], val_send_51[i], val_send_52[i]);
		v_ret_tmp = ft_'$EXO'(val_send_50[i], val_send_51[i], val_send_52[i]);
		if (!(!v_ans_tmp && !v_ret_tmp))
		{
			if (!v_ans_tmp || !v_ret_tmp || memcmp(v_ans_tmp, v_ret_tmp, 50))
			{
				printf("Test #%d fait avec les valeurs : ", i);
				color(BLU);
				printf("|%s| & |%d| & |%lu|\\n" , val_send_50[i], val_send_51[i], val_send_52[i]);
				color(WHI);
				printf("%s = CORRECTION", (char*)(v_ans_tmp));
				color(0);
				printf("\\n");
				color(RED);
				printf("%s = RESULT", (char*)(v_ret_tmp)); 
				color(0);
				printf("\\n");
				correct++;
			}
		}
		i++;
	}
	print_function(nom, correct);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strlen"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	correct = 0;
	char	val_send_strlen[5][50] = {"", "Romain && William", "Si celle-ci est fail bah miar de dieu !", "Code", "POPOPOPO\\0O"};
	i = 0;
	while (i < 5)
	{
		i_ret = ft_'$EXO'(val_send_strlen[i]);
		i_ans = '$EXO'(val_send_strlen[i]);
		if (i_ret != i_ans)
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("|%s|\\n" , val_send_strlen[i]);
			printf("%d = CORRECTION\\n",i_ans);
			color(RED);
			printf("%d = RESULT\\n",i_ret);
			color(0);	
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strdup"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	correct = 0;
	char	val_send_strdup[3][50] = {"", "Hello World WESCANDE Mouahaha", "rcarette && wescande"};
	i = 0;
	while (i < 3)
	{
		v_ans = (void *) '$EXO'(val_send_strdup[i]);
		v_ret = (void *) ft_'$EXO'(val_send_strdup[i]);
		if (strcmp((char *)v_ans,(char *)v_ret))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("|%s|\\n" , val_send_strdup[i]);
			printf("%s = CORRECTION\\n",(char *)v_ans);
			color(RED);
			printf("%s = RESULTAT\\n",(char *)v_ret);
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strcpy"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	correct = 0;
	char	val_send_strcpy[3][50] = {"", "Hello World WESCANDE Mouahaha", "rcarette && wescande"};
	i = 0;
	while (i < 3)
	{
		v_ans_tmp = (void *) '$EXO'(v_ans, val_send_strcpy[i]);
		v_ret_tmp = (void *) ft_'$EXO'(v_ret, val_send_strcpy[i]);
		if (strcmp((char *)v_ans,(char *)v_ret))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("|%s|\\n" , val_send_strcpy[i]);
			printf("%s = CORRECTION\\n",(char *)v_ans);
			color(RED);
			printf("%s = RESULTAT\\n",(char *)v_ret);
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strncpy"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	correct = 0;
	char	val_send_strncpy[3][50] = {"", "Hello World WESCANDE Mouahaha", "rcarette && wescande"};
	size_t	val_send_strncpy_2[3] = {20, 3, 20};
	i = 0;
	while (i < 3)
	{
		v_ans_tmp = (void *) '$EXO'(v_ans, val_send_strncpy[i], val_send_strncpy_2[i]);
		v_ret_tmp = (void *) ft_'$EXO'(v_ret, val_send_strncpy[i], val_send_strncpy_2[i]);
		if (strcmp((char *)v_ans,(char *)v_ret))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("|%s| & |%lu|\\n" , val_send_strncpy[i], val_send_strncpy_2[i]);
			printf("%s = CORRECTION\\n",(char *)v_ans);
			color(RED);
			printf("%s = RESULTAT\\n",(char *)v_ret);
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strcat"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	correct = 0;
	char	val_send_strcat[3][50] = {"", "Hello World WESCANDE Mouahaha", "rcarette && wescande"};
	i = 0;
	while (i < 3)
	{
		v_ans_tmp = (void *) '$EXO'(v_ans, val_send_strcat[i]);
		v_ret_tmp = (void *) ft_'$EXO'(v_ret, val_send_strcat[i]);
		if (strcmp((char *)v_ans_tmp,(char *)v_ret_tmp))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("(|%s| || |%s|) & |%s|\\n", (char *)v_ans, (char *)v_ret, val_send_strcat[i]);
			printf("%s = CORRECTION\\n",(char *)v_ans_tmp);
			color(RED);
			printf("%s = RESULTAT\\n",(char *)v_ret_tmp);
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strncat"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	correct = 0;
	char	val_send_strncat[3][50] = {"", "Hello World WESCANDE Mouahaha", "rcarette && wescande"};
	size_t	val_send_strncat_2[3] = {20, 3, 20};
	i = 0;
	while (i < 3)
	{
		v_ans_tmp = (void *) '$EXO'(v_ans, val_send_strncat[i], val_send_strncat_2[i]);
		v_ret_tmp = (void *) ft_'$EXO'(v_ret, val_send_strncat[i], val_send_strncat_2[i]);
		if (strcmp((char *)v_ans_tmp,(char *)v_ret_tmp))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("(|%s| || |%s|) & |%s| & |%lu|\\n", (char *)v_ans, (char *)v_ret, val_send_strncat[i], val_send_strncat_2[i]);
			printf("%s = CORRECTION\\n",(char *)v_ans_tmp);
			color(RED);
			printf("%s = RESULTAT\\n",(char *)v_ret_tmp);
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
' >> KOMP_LIBFT.c
else
	echo '
	print_function("ft_'$EXO'", -1);
		' >> KOMP_LIBFT.c
fi

EXO="strlcat"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
	bzero(v_ret, 100);
	bzero(v_ans, 100);
	correct = 0;
	char	val_send_strlcat[3][50] = {"", "Hello World WESCANDE Mouahaha", "rcarette && wescande"};
	size_t	val_send_strlcat_2[3] = {20, 3, 20};
	i = 0;
	while (i < 3)
	{
		i_ans = '$EXO'(v_ans, val_send_strlcat[i], val_send_strlcat_2[i]);
		i_ret = ft_'$EXO'(v_ret, val_send_strlcat[i], val_send_strlcat_2[i]);
		if (strcmp((char *)v_ans_tmp,(char *)v_ret_tmp))
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("(|%s| || |%s|) & |%s| & |%lu|\\n", (char *)v_ans, (char *)v_ret, val_send_strlcat[i], val_send_strlcat_2[i]);
			printf("%d = CORRECTION\\n", i_ans);
			color(RED);
			printf("%d = RESULTAT\\n", i_ret);
			color(0);
			printf("\\n");
			correct++;
		}
		i++;
	}
	print_function(nom, correct);
	free(v_ret);
	free(v_ans);
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



gcc -Wall -Wextra -Werror KOMP_LIBFT.c libft.a -o ./.KOmpilaThorLIBFT.compile `pkg-config --libs libbsd`

./.KOmpilaThorLIBFT.compile | less

rm ./.KOmpilaThorLIBFT.compile KOMP_LIBFT.c libft.a

#norminette -R CheckForbiddenSourceHeader $1

#fi
