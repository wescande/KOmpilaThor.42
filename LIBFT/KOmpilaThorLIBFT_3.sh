# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorLIBFT_3.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/02 16:52:16 by wescande          #+#    #+#              #
#    Updated: 2016/11/02 17:27:46 by wescande         ###   ########.fr        #
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

void	affichagelst(t_list *malst)
{
	while(malst)
	{
		printf("%s|%zu|", malst->content, malst->content_size);
		if (malst->next)
			printf("-->");
		else
			printf("\\n");
		malst = malst->next;
	}
}

t_list	*fn_lstmap(t_list *elem)
{
	return(ft_lstnew(elem->content, elem->content_size-1));
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
	(void) s_ret;
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

EXO="lstnew"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	char		val_send_'$EXO'[5][50] = {"", "sv sdqsd fds f", "\200", "WTF", "WTF"};
	size_t		val_send_1'$EXO'[5] = {1, 15, 1, 1, 2};
	t_list *malst;
	i = 0;
	correct = 0;
	while (i < 5)
	{
		malst = ft_'$EXO'(val_send_'$EXO'[i], val_send_1'$EXO'[i]);
		if (!malst || malst->content_size != val_send_1'$EXO'[i] || strncmp((char *)malst->content, val_send_'$EXO'[i], val_send_1'$EXO'[i]) != 0)
		{
			printf("Test #%d fait avec les valeurs : ", i);
			color(BLU);
			printf("|%s|, |%lu|\\n", val_send_'$EXO'[i], val_send_1'$EXO'[i]);
			color(RED);
			printf("RESULTAT : \\n");
			affichagelst(malst);
			color(0);
			printf("\\n");
			++correct;
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

EXO="lstdelone"
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

EXO="lstmap"
nm libft.a | grep ":" | grep -q ft_$EXO
if [ $? -eq 0 ]
then
echo '
	strcpy(nom, "ft_'$EXO'");
	printf("Ex: %s\\n", nom);
	t_list *malist;
	t_list *new;
	t_list *(*maf'$EXO')(t_list *elem);
	maf'$EXO' = fn_'$EXO';
	ft_lstadd(&malist, ft_lstnew("chaine11111", 6));
	ft_lstadd(&malist, ft_lstnew("chaine22222", 7));
	ft_lstadd(&malist, ft_lstnew("chaine33333", 8));
	ft_lstadd(&malist, ft_lstnew("chaine44444", 9));
	new = ft_'$EXO'(malist, maf'$EXO');

	affichagelst(malist);
	affichagelst(new);
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
rm ./.KOmpilaThorLIBFT.compile KOMP_LIBFT.c libft.a
echo "Done"

#norminette -R CheckForbiddenSourceHeader $1

#fi
