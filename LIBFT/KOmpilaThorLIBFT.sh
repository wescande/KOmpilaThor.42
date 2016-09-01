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
//	char	val_send[][45];
//	char	val_send1[][45];
//	char	val_send2[][45];
//	int		val_send_int[8];
//	size_t	val_send_size_t[8];
//	char	s_ret[45];
	void	*v_ret;
//	char	s_ans[45];
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
	int val_send_int[8] = {0, 9, 32, 65, 65, 65, 176, 92};
	size_t val_send_size_t[8] = {5, 8, 4, 10, 0, 5, 7, 20};
	printf("Ex: %s\\n", nom);
	color(0);
	printf("\\n");
	i = 0;
	while (i < 8)
	{
		printf("Test #%d fait avec les valeurs : ", i);
		color(BLU);
		printf("%d(""%c"") et %lu\\n" , val_send_int[i], val_send_int[i], val_send_size_t[i]);
		color(WHI);
		v_ans = '$EXO'(v_ans, val_send_int[i], val_send_size_t[i]);
		printf("%s = CORRECTION", (char*)v_ans);
		color(0);
		printf("\\n");
		v_ret = ft_'$EXO'(v_ret, val_send_int[i], val_send_size_t[i]);
		if (memcmp(v_ans, v_ret, val_send_size_t[i]))
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
		printf("Ex: %s", nom);
		printf("\\n<====================SUCCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("Ex: %s", nom);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> KOMP_LIBFT.c

echo "
	return (0);
}" >> KOMP_LIBFT.c

make re
make clean

gcc -Wall -Wextra -Werror KOMP_LIBFT.c libft.a -o ./.KOmpilaThorLIBFT.compile

./.KOmpilaThorLIBFT.compile

rm ./.KOmpilaThorLIBFT.compile

#norminette -R CheckForbiddenSourceHeader $1

fi
