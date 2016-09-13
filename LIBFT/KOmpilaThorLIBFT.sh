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
	int		correct;
	int		i;
	if (!(nom = (char*)malloc(sizeof(char) * 45)))
		return (1);
	nom[0] = '\0';
	\c' > KOMP_LIBFT.c


EXO="memset"
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

EXO="bzero"
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

EXO="memcpy"
echo '
	printf("<=================================================>\\n");
	strcpy(nom, "ft_'$EXO'");
	correct = 0;
	if (!(v_ret = (void*)malloc(sizeof(void) * 100)))
		return (1);
	if (!(v_ans = (void*)malloc(sizeof(void) * 100)))
		return (1);
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
		'$EXO'(v_ans, val_send_30[i], val_send_31[i]);
		printf("%s = CORRECTION", (char*)v_ans);
		color(0);
		printf("\\n");
		ft_'$EXO'(v_ret, val_send_30[i], val_send_31[i]);
		if (memcmp(v_ans, v_ret, val_send_31[i]))
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

echo "
	return (0);
}" >> KOMP_LIBFT.c

make re
make clean

gcc -Wall -Wextra -Werror KOMP_LIBFT.c libft.a -o ./.KOmpilaThorLIBFT.compile

./.KOmpilaThorLIBFT.compile | more

rm ./.KOmpilaThorLIBFT.compile

#norminette -R CheckForbiddenSourceHeader $1

fi
