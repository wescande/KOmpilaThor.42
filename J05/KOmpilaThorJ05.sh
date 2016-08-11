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
echo "alias KOmpilaThorJ05='sh $0'"
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

char		*ft_strcpy(char *dest, char *src);
char		*ft_strncpy(char *dest, char *src, unsigned int n);
char		*ft_strstr(char *str, char *to_find);
int			ft_strcmp(char *s1, char *s2);
int			ft_strncmp(char *s1, char *s2, unsigned int n);
char		*ft_strupcase(char *str);
char		*ft_strlowcase(char *str);
char		*ft_strcapitalize(char *str);
int			ft_str_is_alpha(char *str);
int			ft_str_is_numeric(char *str);
int			ft_str_is_uppercase(char *str);
int			ft_str_is_lowercase(char *str);
int			ft_str_is_printable(char *str);
char		*ft_strcat(char *dest, char *src);
char		*ft_strncat(char *dest, char *src, int nb);
unsigned	int ft_strlcat(char *dest, char *src, unsigned int size);
unsigned	int ft_strlcpy(char *dest, char *src, unsigned int size);
void		ft_putnbr_base(int nbr, char *base);
int			ft_atoi_base(char *str, char *base);
void		ft_putstr_non_printable(char *str);
void		*ft_print_memory(void *addr, unsigned int size);

int		main(void)
{
	\c' > J05.c

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
	color(WHI);
	printf("\\n%s          : CORRECTION", str);
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
' >> J05.c
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
		color(WHI);
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
' >> J05.c
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
		correct++;
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
		color(WHI);
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
' >> J05.c
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
		color(WHI);
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
' >> J05.c
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
	char val_send[][30] = {"0?l;;[];=-0123", "15^4", "89\\\\7", "-6%54",
	"2147@483647", "-21474 83648", "+45632", " - 56", "oHnSPymAQzAKpmAQzAKpRv"};
	char val_send1[][30] = {"0?l;;[];=-0123", "15^4", "89\\\\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56"};
	unsigned int val_send2[] = {5, 10 ,0, 3, 1, 5, 2, 5, 22};
	char ret[30];
	char ans[30];
	int i = 0;
	while (i < 9)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s et %d\\n" , val_send[i], val_send2[i]);
		color(WHI);
		strncpy(ans, val_send[i], val_send2[i]);
		printf("%s = CORRECTION", ans);
		color(0);
		printf("\\n");
		'$EXO'(ret, val_send1[i], val_send2[i]);
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
' >> J05.c
fi

if [ "$EX" = "ex05" ]
then
	EXO="ft_strstr"
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
		printf("Nom = ERREUR ! ! ! !");
		correct++;
	}
	color(0);
	printf("\\n");
	char val_send[][15] = {"0?l;;[];=-0123", "15^4", "89\\\\7", "-6%54", "2147@483647", "-21474 83648", "-34+-3545632", "55556555", "12323234412345"};
	char val_send2[][15] = {";", "15" ,"7", "%", "@", "-" , "-35", "55","23234"};
	char ret[30];
	char ans[30];
	int i = 0;
	while (i < 9)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s et %s\\n" , val_send[i], val_send2[i]);
		color(WHI);
		strcpy(ans, strstr(val_send[i], val_send2[i]));
		printf("%s = CORRECTION", ans);
		color(0);
		printf("\\n");
		strcpy(ret, '$EXO'(val_send[i], val_send2[i]));
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

' >> J05.c
fi

if [ "$EX" = "ex06" ]
then
	EXO="ft_strcmp"
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
	char val_send2[][15] = {"5", "15" ,"7", "dsfsdgwgww87", "-560"};
	int ret;
	int ans;
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s et %s\\n" , val_send[i], val_send2[i]);
		color(WHI);
		ans = strcmp(val_send[i], val_send2[i]);
		printf("%d = CORRECTION", ans);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i], val_send2[i]);
		if (ret != ans)
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%d = RESULT", ret); 
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

' >> J05.c
fi



if [ "$EX" = "ex07" ]
then
	EXO="ft_strncmp"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 07 : %s\\n", nom);
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
	char val_send[][15] = {"\\200", "abc", "abc", "ab\\0cde", "q"};
	char val_send2[][15] = {"\\0", "abcde" ,"abc\\0defg", "abcc\\0e", "a"};
	int  val_send3[15] = {1, 3, 100, 20, 0};
	int ret;
	int ans;
	int i = 0;
	while (i < 5)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s, %s  et %d\\n" , val_send[i], val_send2[i], val_send3[i]);
		color(WHI);
		ans = strncmp(val_send[i], val_send2[i],(unsigned int) val_send3[i]);
		printf("%d = CORRECTION", ans);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i], val_send2[i], (unsigned int) val_send3[i]);
		if (ret != ans)
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%d = RESULT", ret); 
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

' >> J05.c
fi


if [ "$EX" = "ex08" ]
then
	EXO="ft_strupcase"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 08 : %s\\n", nom);
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
	char val_send[][30] = {"asdfsadf", "BonJour", "000KompilaThorForTheWin:>{)@*"};
	char ret[30];
	char ans[][30] = {"ASDFSADF", "BONJOUR", "000KOMPILATHORFORTHEWIN:>{)@*"};
	int i = 0;
	while (i < 3)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s\\n" , val_send[i]);
		color(WHI);
		printf("%s = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		strcpy(ret,'$EXO'(val_send[i]));
		if (strcmp(ret, ans[i]))
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

' >> J05.c
fi


if [ "$EX" = "ex09" ]
then
	EXO="ft_strlowcase"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 09 : %s\\n", nom);
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
	char ans[][30] = {"asdfsadf", "bonjour", "000kompilathorforthewin:>{)@*"};
	char ret[30];
	char val_send[][30] = {"AsdfSADF", "BONJOUR", "000KOMPILATHORFORTHEWIN:>{)@*"};
	int i = 0;
	while (i < 3)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s\\n" , val_send[i]);
		color(WHI);
		printf("%s = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		strcpy(ret,'$EXO'(val_send[i]));
		if (strcmp(ret, ans[i]))
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

' >> J05.c
fi



if [ "$EX" = "ex10" ]
then
	EXO="ft_strcapitalize"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 10 : %s\\n", nom);
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
	char val_send[][30] = {"aFFd fsADF", "BonJo+-ur",
	"000kompilathor+forthewiN", "q","rekt17+Lol mdr mdr 4242l42"};

	char ret[30];
	char ans[][30] = {"Affd Fsadf", "Bonjo+-Ur", "000kompilathor+Forthewin",
	"Q", "Rekt17+Lol Mdr Mdr 4242l42"};
	int i = 0;
	while (i < 5)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s\\n" , val_send[i]);
		color(WHI);
		printf("%s = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		strcpy(ret,'$EXO'(val_send[i]));
		if (strcmp(ret, ans[i]))
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

' >> J05.c
fi

if [ "$EX" = "ex11" ]
then
	EXO="ft_str_is_alpha"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 11 : %s\\n", nom);
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
	char val_send[][30] = {"safsdfFAaFFASFAzzZZZSff","",  "Ms5AJ", "aaa0aa", "joifjoiwf jsioadjo", " ", "-21474 83648", "+45632", " - 56"};
	int ret;
	int ans[] = {1, 1, 0, 0, 0, 0, 0 };
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s", val_send[i]);
		color(WHI);
		printf("\\n%d = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i]);
		if (ret != ans[i])
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%d = RESULT", ret); 
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

' >> J05.c
fi

if [ "$EX" = "ex12" ]
then
	EXO="ft_str_is_numeric"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 12 : %s\\n", nom);
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
	char val_send[][30] = {"487654096","",  "MAJ", "798 7", "joifjoiwf jsioadjo", " ", "-21474 83648", "+45632", " - 56"};
	int ret;
	int ans[] = {1, 1, 0, 0, 0, 0, 0 };
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s", val_send[i]);
		color(WHI);
		printf("\\n%d = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i]);
		if (ret != ans[i])
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%d = RESULT", ret); 
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

' >> J05.c
fi

if [ "$EX" = "ex13" ]
then
	EXO="ft_str_is_lowercase"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 13 : %s\\n", nom);
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
	char val_send[][30] = {"azquedesminuscules","",  "MAJ", "7987", "joifjoiwf jsioadjo", " ", "-21474 83648", "+45632", " - 56"};
	int ret;
	int ans[] = {1, 1, 0, 0, 0, 0, 0 };
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s", val_send[i]);
		color(WHI);
		printf("\\n%d = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i]);
		if (ret != ans[i])
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%d = RESULT", ret); 
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

' >> J05.c
fi

if [ "$EX" = "ex14" ]
then
	EXO="ft_str_is_uppercase"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 14 : %s\\n", nom);
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
	int ret;
	char val_send[][30] = {"AZQUEDESMAJUSCULES","",  "min", "7987", "joifjoiwf jsioadjo", " ", "-21474 83648", "+45632", " - 56"};
	int ans[] = {1, 1, 0, 0, 0, 0, 0 };
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s", val_send[i]);
		color(WHI);
		printf("\\n%d = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i]);
		if (ret != ans[i])
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%d = RESULT", ret); 
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

' >> J05.c
fi

if [ "$EX" = "ex15" ]
then
	EXO="ft_str_is_printable"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 15 : %s\\n", nom);
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
	char val_send[][50] = {"QUEDESMAJ~8219738 4@#$%^&*()_-+=12984120 USCULES"," 8917=?321 r2f we\\asd",  "mi\\tn", "\\n7987", "joifjoiwf jsioadjo", "'"\'"'" , "-21474 83648", "+45632"};
	int ret;
	int ans[] = {1, 0, 0, 0, 1, 1, 1, 1 };
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s", val_send[i]);
		color(WHI);
		printf("\\n%d = CORRECTION", ans[i]);
		color(0);
		printf("\\n");
		ret = '$EXO'(val_send[i]);
		if (ret != ans[i])
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
			printf("%d = RESULT", ret); 
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

' >> J05.c
fi

if [ "$EX" = "ex16" ]
then
	EXO="ft_strcat"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 16 : %s\\n", nom);
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
	char val_send2[][45] = {"bisounours", "   \\n++rewed", "\t\t456pipo","[]koljejt|||||", "poule", "789*1", "-12ethop", "<<chevre"};
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s et %s\\n" , val_send[i], val_send2[i]);
		color(WHI);
		strcat(val_send[i], val_send2[i]);
		printf("%s = CORRECTION", val_send[i]);
		color(0);
		printf("\\n");
		'$EXO'(val_send1[i], val_send2[i]);
		if (strcmp(val_send[i], val_send1[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", val_send1[i]); 
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
' >> J05.c
fi

if [ "$EX" = "ex17" ]
then
	EXO="ft_strncat"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 17 : %s\\n", nom);
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
	char val_send2[][45] = {"bisounours", "   \\n++rewed", "\t\t456pipo","[]koljejt|||||", "poule", "789*1", "-12ethop", "<<chevre"};
	int	val_send3[] = {12, 6, 5, 8, 0, -1, 2, 36};
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s, %s et %d\\n" , val_send[i], val_send2[i], val_send3[i]);
		color(WHI);
		strncat(val_send[i], val_send2[i], val_send3[i]);
		printf("%s = CORRECTION", val_send[i]);
		color(0);
		printf("\\n");
		'$EXO'(val_send1[i], val_send2[i], val_send3[i]);
		if (strcmp(val_send[i], val_send1[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", val_send1[i]); 
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
' >> J05.c
fi

if [ "$EX" = "ex18" ]
then
	EXO="ft_strlcat"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 18 : %s\\n", nom);
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
' >> J05.c
fi

if [ "$EX" = "ex19" ]
then
	EXO="ft_strlcpy"
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
' >> J05.c
fi

if [ "$EX" = "ex20" ]
then
	EXO="ft_putnbr_base"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 20 : %s\\n", nom);
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
' >> J05.c
fi

if [ "$EX" = "ex21" ]
then
	EXO="ft_atoi_base"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 21 : %s\\n", nom);
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
	char val_send[][45] = {"0110010110", "89ABCD", "RTYUF"};
	char val_send1[][45] = {"01", "0123456789ABCDEF", "RTYUF"};
	int ans[45] = {406, 9022413, 194};
	int ret;
	int i = 0;
	while (i < 3)
	{
		printf("Test #%d avec ", i);
		color(BLU);
		printf("%s et %s\\n" , val_send[i], val_send1[i]);
		color(WHI);
		printf("%d = CORRECTION", ans[i]);
		color (BLU);
		printf("\\n");
		fflush(stdout);
		ret = '$EXO'(val_send[i], val_send1[i]);
		color(0);
		if (ret != ans[i])
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%d = RESULT", ret); 
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
' >> J05.c
fi

if [ "$EX" = "ex22" ]
then
	EXO="ft_putstr_non_printable"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 22 : %s\\n", nom);
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
	char val_send[][45] = {"0 1f 10 010110", "89\\0ABCD", "fewf\\nRTYUF"};
	int i = 0;
	while (i < 3)
	{
		printf("Test #%d avec ", i);
		color(BLU);
		printf("%s" , val_send[i]);
		color (BLU);
		printf("\\n");
		fflush(stdout);
		'$EXO'(val_send[i]);
		color(0);
		printf("\\n");
		i++;
	}
	color(BLU);
	printf("\\n<====================INDETERMINATE !======================>\\n");
	color(0);
	printf("\\n");
' >> J05.c
fi

if [ "$EX" = "ex23" ]
then
	EXO="ft_print_memory"
echo '
	printf("<=================================================>\\n");
	char *nom = "'$EXO'";
	int correct = 0;
	printf("Ex 23 : %s\\n", nom);
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
	char val_send[][90] = {"Salut les aminches c'"'"'est cool show mem on fait de truc terrible.\\n"};
	int i = 0;
	while (i < 1)
	{
		printf("Test #%d avec ", i);
		color(BLU);
		printf("%s" , val_send[i]);
		color (BLU);
		printf("\\n");
		fflush(stdout);
		'$EXO'(val_send[i], 1);
		color(0);
		printf("\\n");
		i++;
	}
	color(BLU);
	printf("\\n<====================INDETERMINATE !======================>\\n");
	color(0);
	printf("\\n");
' >> J05.c
fi

echo "
	return (0);
}" >> J05.c

gcc -Wall -Wextra -Werror J05.c ft_putchar_KOmpilaThor.c $1 -o ./.KOmpilaThorJ05.compile

./.KOmpilaThorJ05.compile

rm ./.KOmpilaThorJ05.compile ft_putchar_KOmpilaThor.c

norminette -R CheckForbiddenSourceHeader $1

fi

