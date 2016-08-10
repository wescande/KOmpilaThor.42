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

echo '
/* ************************************************************************** */
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

char	*ft_strcpy(char *dest, char *src);
char	*ft_strncpy(char *dest, char *src, unsigned int n);
char	*ft_strstr(char *str, char *to_find);
int     ft_strcmp(char *s1, char *s2);
int		ft_strncmp(char *s1, char *s2, unsigned int n);
char	*ft_strupcase(char *str);
char	*ft_strlowcase(char *str);
char	*ft_strcapitalize(char *str);
int		ft_str_is_alpha(char *str);
int		ft_str_is_numeric(char *str);
int		ft_str_is_uppercase(char *str);
int		ft_str_is_lowercase(char *str);
int		ft_str_is_printable(char *str);
char	*ft_strcat(char *dest, char *src);
char	*ft_strncat(char *dest, char *src, int nb);
unsigned int ft_strlcat(char *dest, char *src, unsigned int size);


int		main(void)
{
	\c' > J06.c

if [ "$EX" = "ex00" ]
then
echo '
	/*EXO*/
	printf("<=================================================>\\n");
	printf("Ex 00 : ft_putstr\\n");
	int correct = 0;
	if (!strcmp("'"$FONCTION"'","ft_putstr.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		correct++;
		color(31);
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\\n");
	char *str= "j~e s0ys une chAine !@$%# ";
	printf("Test #0 avec");
	color(32);
	printf("\\n%s", str);
	color(0);
	printf("\\n");	
	ft_putstr(str);
	if (correct == 0)
	{
		color(BLU);
		printf("\\n<====================Indeterminé !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");	
' >> J06.c
fi

if [ "$EX" = "ex01" ]
then
	EXO="ft_putnbr"
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
	int val_send [] = {0, 154, 897, -654, 2147483647, -2147483648, 45632};
	int i = 0;
	while (i < 7)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%d \\n" ,val_send[i]);
		color(32);
		printf("%d", val_send[i]);
		color(0);
		printf("\\n");
		'$EXO'(val_send[i]);
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(BLU);
		printf("\\n<====================Indeterminé !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J06.c
fi

if [ "$EX" = "ex02" ]
then
	EXO="ft_atoi"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 02 : %s\\n", nom);
	if (!strcmp("'"$FONCTION"'","'$EXO'.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		color(31);
		correct++
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\\n");
	char val_send[][15] = {"0", "15^4", "89\\\\7", "-6%54", "2147483647", "-2147483648", "+45632", " - 56"};
	int ret;
	int ans;
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s \\n" ,val_send[i]);
		color(32);
		ans =  atoi(val_send[i]);
		printf("%d", ans);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i]);
		if (ret != ans)
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%d", ret); 
		color(0);
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\\n<====================SUCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J06.c
fi

if [ "$EX" = "ex03" ]
then
	EXO="ft_strcpy"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 03 : %s\\n", nom);
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
	char val_send[][15] = {"0?l;;[];=-0123", "15^4", "89\\\\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56", ""};
	char ret[30];
	char ans[30];
	int i = 0;
	while (i < 9)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s \\n" ,val_send[i]);
		color(32);
		strcpy(ans, val_send[i]);
		printf("%s = CORRECTION", ans);
		color(0);
		printf("\\n");
		'$EXO'(ret, val_send[i]);
		if (strcmp(ret,ans))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", ret); 
		color(0);
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\\n<====================SUCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J06.c
fi

if [ "$EX" = "ex04" ]
then
	EXO="ft_strncpy"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 03 : %s\\n", nom);
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
	char val_send[][15] = {"0?l;;[];=-0123", "15^4", "89\\\\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56"};
	unsigned int val_send2[] = {5, 10 ,0, 3, 1, 5, 2, 5};
	char ret[30];
	char ans[30];
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s et %d\\n" , val_send[i], val_send2[i]);
		color(32);
		strncpy(ans, val_send[i], val_send2[i]);
		printf("%s = CORRECTION", ans);
		color(0);
		printf("\\n");
		'$EXO'(ret, val_send[i], val_send2[i]);
		if (strcmp(ret,ans))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", ret); 
		color(0);
		printf("\\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\\n<====================SUCESS !======================>\\n");
	}
	else
	{
		color(RED);
		printf("\\n<====================FAIL ! ! ! !======================>\\n");
	}
	color(0);
	printf("\\n");
' >> J06.c
fi

echo "
	return (0);
}" >> J06.c

gcc -Wall -Wextra -Werror J06.c ft_putchar_KOmpilaThor.c $1 -o ./.KOmpilaThorJ06.compile

./.KOmpilaThorJ06.compile

rm ./.KOmpilaThorJ06.compile ft_putchar_KOmpilaThor

norminette -R CheckForbiddenSourceHeader $1


fi
