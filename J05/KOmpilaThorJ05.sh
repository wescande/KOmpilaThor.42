# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorJ05.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/06 11:11:59 by wescande          #+#    #+#              #
#    Updated: 2016/08/08 17:38:39 by wescande         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

EX=$(echo "$1" | sed 's/.*\/ex/ex/' | cut -c 1-4)
FONCTION=$(echo "$1" | sed 's/.*\///g')

echo "
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   KompilaThorJ05.compile                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wescande <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 12:10:30 by wescande          #+#    #+#             */
/*   Updated: 2016/08/08 12:10:32 by wescande         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int		ft_putchar(char c);

int		ft_putnbr(int nb);

void	ft_putstr(char *str);

int		ft_atoi(char *str);

char	*ft_strcpy(char *dest, char *src);

int		main(void)
{
	\c" > J05.c

if [ "$EX" = "ex00" ]
then
echo '
	/*EX00*/
	printf("<=================================================>\\n");
	printf("Ex 00 : ft_putstr\\n");
	if ('"$FONCTION"' == ft_putstr.c)
		printf("\033[32mNom = OK \n")
	else
		printf("\033[31mNom = ERREUR ! ! ! ! \033[0m\n")
	printf("\\n");
	char *str= "j~e s0ys une chAine !@$%# ";
	printf("Test #0 avec \"%s\"", str);
	ft_putstr(str);
	printf("\033[31m<====================Indeterminé !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex01" ]
then
echo '
	/*val_send*/
	printf("<=================================================>\\n");
	printf("Ex 01 : ft_putnbr\\n");
	if ('"$FONCTION"' == ft_putnbr.c)
		printf("\033[32mNom = OK \n")
	else
		printf("\033[31mNom = ERREUR ! ! ! ! \033[0m\n")
	printf("\\n");
	int val_send;
	val_send = 0;
	printf("Test #0 avec \"%d\"", val_send);
	ft_putnbr(val_send);
	val_send = -1245;
	printf("\\nTest #1 avec \"%d\"", val_send);
	ft_putnbr(val_send);
	val_send = -2147483648;
	printf("\\nTest #2 avec \"%d\"", val_send);
	ft_putnbr(val_send);
	val_send = -2;
	printf("\\nTest #3 avec \"%d\"", val_send);
	ft_putnbr(val_send);
	val_send = 2147483647;
	printf("\\nTest #4 avec \"%d\"", val_send);
	ft_putnbr(val_send);
	printf("\\n");
	printf("\033[31m<====================Indeterminé !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex02" ]
then
echo '
	/*EX02*/
	printf("<=================================================>\\n");
	printf("Ex 02 : ft_atoi\\n");
	if ('"$FONCTION"' == ft_atoi.c)
		printf("\033[32mNom = OK \n")
	else
		printf("\033[31mNom = ERREUR ! ! ! ! \033[0m\n")
	printf("\\n");
	char str[] = " 4584.358.35";
	int correct = 0;
	int val_ret;
	int val_correct = 4584;
	val_ret = ft_atoi(val_send);
	val_ret != val_correct ? correct++ : 0;
	printf("Test #0 avec \"%s\" :\\n%d\\n%d : result\\n\\n", str, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_ret != 0 ? correct++ : 0;
	str[] = " -2147483648.35";
	val_correct = -2147483648;
	val_ret = ft_atoi(val_send);
	val_ret != val_correct ? correct++ : 0;
	printf("Test #1 avec \"%s\" :\\n%d\\n%d : result\\n\\n", str, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_ret != 1 ? correct++ : 0;
	str[] = " --147483648.35";
	val_correct = 0;
	val_ret = ft_atoi(val_send);
	val_ret != val_correct ? correct++ : 0;
	printf("Test #2 avec \"%s\" :\\n%d\\n%d : result\\n\\n", str, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_ret != 244140625 ? correct++ : 0;
	str[] = "21474_83Y648.35";
	val_correct = 21474;
	val_ret = ft_atoi(val_send);
	val_ret != val_correct ? correct++ : 0;
	printf("Test #3 avec \"%s\" :\\n%d\\n%d : result\\n\\n", str, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_ret != 0 ? correct++ : 0;
	str[] = "sgd -2147483648.35";
	val_correct = 0;
	val_ret = ft_atoi(val_send);
	val_ret != val_correct ? correct++ : 0;
	printf("Test #4 avec \"%s\" :\\n%d\\n%d : result\\n\\n", str, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	str[] = "45-147483648.35";
	val_correct = 45;
	val_ret = ft_atoi(val_send);
	val_ret != val_correct ? correct++ : 0;
	printf("Test #0 avec \"%s\" :\\n%d\\n%d : result\\n\\n", str, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_ret != -2147483648 ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex03" ]
then
echo '
	/*EX03*/
	printf("<=================================================>\\n");
	printf("Ex 03 : ft_strcpy\\n");
	if ('"$FONCTION"' == ft_strcpy.c)
		printf("\033[32mNom = OK \n")
	else
		printf("\033[31mNom = ERREUR ! ! ! ! \033[0m\n")
	printf("\\n");
	int val_send;
	int val_send2;
	int val_ret;
	int correct;
	correct = 0;
	val_send = 0;
	val_send2 = 5;
	val_ret = ft_recursive_power(val_send, val_send2);
	printf("Test #0 avec \"%d^%d\" :\\n0\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 0 ? correct++ : 0;
	val_send = 5;
	val_send2 = 0;
	val_ret = ft_recursive_power(val_send, val_send2);
	printf("Test #1 avec \"%d^%d\" :\\n1\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 1 ? correct++ : 0;
	val_send = -25;
	val_send2 = 5;
	val_ret = ft_recursive_power(val_send, val_send2);
	printf("Test #2 avec \"%d^%d\" :\\n-9765625\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != -9765625 ? correct++ : 0;
	val_send = -2;
	val_send2 = -5;
	val_ret = ft_recursive_power(val_send, val_send2);
	printf("Test #3 avec \"%d^%d\" :\\n0\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 0 ? correct++ : 0;
	val_send = 10;
	val_send2 = 6;
	val_ret = ft_recursive_power(val_send, val_send2);
	printf("Test #4 avec \"%d^%d\" :\\n1000000\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 1000000 ? correct++ : 0;
	val_send = -2;
	val_send2 = 31;
	val_ret = ft_recursive_power(val_send, val_send2);
	printf("Test #5 avec \"%d^%d\" :\\n-2147483648\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != -2147483648 ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex04" ]
then
echo '
	/*EX04*/
	printf("<=================================================>\\n");
	printf("Ex 04 : ft_strncpy\\n");
	if ('"$FONCTION"' == ft_strncpy.c)
		printf("\033[32mNom = OK \n")
	else
		printf("\033[31mNom = ERREUR ! ! ! ! \033[0m\n")
	printf("\\n");
	int val_send;
	int val_ret;
	int correct;
	int val_correct;
	correct = 0;
	val_send = 0;
	val_correct = 0;
	val_ret = ft_fibonacci(val_send);
	printf("Test #0 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 1;
	val_correct = 1;
	val_ret = ft_fibonacci(val_send);
	printf("Test #1 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 10;
	val_correct = 55;
	val_ret = ft_fibonacci(val_send);
	printf("Test #2 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = -1;
	val_correct = -1;
	val_ret = ft_fibonacci(val_send);
	printf("Test #3 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = -1235425;
	val_correct = -1;
	val_ret = ft_fibonacci(val_send);
	printf("Test #4 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 46;
	val_correct = 1836311903;
	val_ret = ft_fibonacci(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 45;
	val_correct = 1134903170;
	val_ret = ft_fibonacci(val_send);
	printf("Test #6 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 20;
	val_correct = 6765;
	val_ret = ft_fibonacci(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex05" ]
then
echo '
	/*EX05*/
	printf("<=================================================>\\n");
	printf("Ex 05 : ft_strstr\\n");
	if ('"$FONCTION"' == ft_strstr.c)
		printf("\033[32mNom = OK \n")
	else
		printf("\033[31mNom = ERREUR ! ! ! ! \033[0m\n")
	printf("\\n");
	int val_send;
	int val_ret;
	int correct;
	int val_correct;
	correct = 0;
	val_send = 0;
	val_correct = 0;
	val_ret = ft_sqrt(val_send);
	printf("Test #0 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 1;
	val_correct = 1;
	val_ret = ft_sqrt(val_send);
	printf("Test #1 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 4;
	val_correct = 2;
	val_ret = ft_sqrt(val_send);
	printf("Test #2 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 9;
	val_correct = 3;
	val_ret = ft_sqrt(val_send);
	printf("Test #3 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = -1235425;
	val_correct = 0;
	val_ret = ft_sqrt(val_send);
	printf("Test #4 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2147395600;
	val_correct = 46340;
	val_ret = ft_sqrt(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2250001;
	val_correct = 0;
	val_ret = ft_sqrt(val_send);
	printf("Test #6 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2147483647;
	val_correct = 0;
	val_ret = ft_sqrt(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2;
	val_correct = 0;
	val_ret = ft_sqrt(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex06" ]
then
echo ' 
	/*EX06*/
	printf("<=================================================>\\n");
	printf("Ex 06 : ft_is_prime\\n");
	if ('"$FONCTION"' == ft_strncmp.c)
		printf("\033[32mNom = OK \n")
	else
		printf("\033[31mNom = ERREUR ! ! ! ! \033[0m\n")
	printf("\\n");
	int val_send;
	int val_ret;
	int correct;
	int val_correct;
	correct = 0;
	val_send = 0;
	val_correct = 0;
	val_ret = ft_is_prime(val_send);
	printf("Test #0 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 1;
	val_correct = 0;
	val_ret = ft_is_prime(val_send);
	printf("Test #1 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2;
	val_correct = 1;
	val_ret = ft_is_prime(val_send);
	printf("Test #2 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 13;
	val_correct = 1;
	val_ret = ft_is_prime(val_send);
	printf("Test #3 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 458;
	val_correct = 0;
	val_ret = ft_is_prime(val_send);
	printf("Test #4 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 214745911;
	val_correct = 1;
	val_ret = ft_is_prime(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = -2250001;
	val_correct = 0;
	val_ret = ft_is_prime(val_send);
	printf("Test #6 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 369;
	val_correct = 0;
	val_ret = ft_is_prime(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2147483647;
	val_correct = 1;
	val_ret = ft_is_prime(val_send);
	printf("Test #6 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex07" ]
then
echo ' 
	/*EX07*/
	printf("<=================================================>\\n");
	printf("Ex 07 : ft_find_next__prime\\n");
	printf("\\n");
	int val_send;
	int val_ret;
	int correct;
	int val_correct;
	correct = 0;
	val_send = 0;
	val_correct = 2;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #0 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 1;
	val_correct = 2;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #1 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2;
	val_correct = 2;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #2 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 13;
	val_correct = 13;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #3 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 458;
	val_correct = 461;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #4 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 214745911;
	val_correct = 214745911;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = -2250001;
	val_correct = 2;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #6 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 369;
	val_correct = 373;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #5 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	val_send = 2147483645;
	val_correct = 2147483647;
	val_ret = ft_find_next_prime(val_send);
	printf("Test #6 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi

if [ "$EX" = "ex08" ]
then
echo ' 
	/*EX08*/
	printf("<=================================================>\\n");
	printf("Ex 08 : ft_eight_queens_puzzle\\n");
	printf("\\n");
	int val_ret;
	int correct;
	int val_correct;
	correct = 0;
	val_correct = 92;
	val_ret = ft_eight_queens_puzzle();
	printf("Test #0 :\\n%d\\n%d : result\\n\\n", val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi


if [ "$EX" = "ex09" ]
then
echo ' 
	/*EX09*/
	printf("<=================================================>\\n");
	printf("Ex 09 : ft_eight_queens_puzzle_2\\n");
	printf("\\n");
	printf("Test #0 :\\n");
	ft_eight_queens_puzzle_2();
	printf("\033[31m<====================Indeterminé !======================>\\n");
	printf("\033[0m");
' >> J05.c
fi


echo "
	return (0);
}" >> J05.c

gcc -Wall -Wextra -Werror J05.c ft_*.c $1 -o ./.KOmpilaThorJ05.compile

./.KOmpilaThorJ05.compile

rm ./.KOmpilaThorJ05.compile

norminette -R CheckForbiddenSourceHeader $1



