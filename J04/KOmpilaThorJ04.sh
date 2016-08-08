# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    KOmpilaThorJ04.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wescande <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/06 11:11:59 by wescande          #+#    #+#              #
#    Updated: 2016/08/08 07:16:41 by wescande         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

EX=$(echo "$1" | sed 's/.*\/ex/ex/' | cut -c 1-4)

echo "#include <stdio.h>

int		ft_putchar(char c);

int		ft_putnbr(int nb);

int		ft_iterative_factorial(int nb);

int		ft_recursive_factorial(int nb);

int		ft_iterative_power(int nb, int power);

int		ft_recursive_power(int nb, int power);

int		ft_fibonacci(int index);

int		ft_sqrt(int nb);

int		ft_is_prime(int nb);

int		ft_find_next_prime(int nb);

int		ft_eight_queens_puzzle(void);

void	ft_eight_queens_puzzle_2(void);

int		main(void)
{
	\c" > J04.c
if [ "$EX" = "ex00" ]
then
echo '
	/*EX00*/
	printf("<=================================================>\\n");
	printf("Ex 00 : ft_iterative_factorial\\n");
	printf("\\n");
	int ex00;
	int ret00;
	int correct;
	correct = 0;
	ex00 = 0;
	ret00 = ft_iterative_factorial(ex00);
	printf("Test #0 avec \"%d\" :\\n1\\n%d : result\\n\\n", ex00, ret00);
	ret00 != 1 ? correct++ : 0;
	ex00 = 5;
	ret00 = ft_iterative_factorial(ex00);
	printf("Test #1 avec \"%d\" :\\n120\\n%d : result\\n\\n", ex00, ret00);
	ret00 != 120 ? correct++ : 0;
	ex00 = -25;
	ret00 = ft_iterative_factorial(ex00);
	printf("Test #2 avec \"%d\" :\\n0\\n%d : result\\n\\n", ex00, ret00);
	ret00 != 0 ? correct++ : 0;
	ex00 = -2;
	ret00 = ft_iterative_factorial(ex00);
	printf("Test #3 avec \"%d\" :\\n0\\n%d : result\\n\\n", ex00, ret00);
	ret00 != 0 ? correct++ : 0;
	ex00 = 12;
	ret00 = ft_iterative_factorial(ex00);
	printf("Test #4 avec \"%d\" :\\n479001600\\n%d : result\\n\\n", ex00, ret00);
	ret00 != 479001600 ? correct++ : 0;
	ex00 = 13;
	ret00 = ft_iterative_factorial(ex00);
	printf("Test #5 avec \"%d\" :\\n0\\n%d : result\\n\\n", ex00, ret00);
	ret00 != 0 ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J04.c
fi

if [ "$EX" = "ex01" ]
then
echo '
	/*EX01*/
	printf("<=================================================>\\n");
	printf("Ex 01 : ft_recursive_factorial\\n");
	printf("\\n");
	int ex01;
	int ret01;
	int correct;
	correct = 0;
	ex01 = 0;
	ret01 = ft_recursive_factorial(ex01);
	printf("Test #0 avec \"%d\" :\\n1\\n%d : result\\n\\n", ex01, ret01);
	ret01 != 1 ? correct++ : 0;
	ex01 = 5;
	ret01 = ft_recursive_factorial(ex01);
	printf("Test #1 avec \"%d\" :\\n120\\n%d : result\\n\\n", ex01, ret01);
	ret01 != 120 ? correct++ : 0;
	ex01 = -25;
	ret01 = ft_recursive_factorial(ex01);
	printf("Test #2 avec \"%d\" :\\n0\\n%d : result\\n\\n", ex01, ret01);
	ret01 != 0 ? correct++ : 0;
	ex01 = -2;
	ret01 = ft_recursive_factorial(ex01);
	printf("Test #3 avec \"%d\" :\\n0\\n%d : result\\n\\n", ex01, ret01);
	ret01 != 0 ? correct++ : 0;
	ex01 = 12;
	ret01 = ft_recursive_factorial(ex01);
	printf("Test #4 avec \"%d\" :\\n479001600\\n%d : result\\n\\n", ex01, ret01);
	ret01 != 479001600 ? correct++ : 0;
	ex01 = 13;
	ret01 = ft_recursive_factorial(ex01);
	printf("Test #5 avec \"%d\" :\\n0\\n%d : result\\n\\n", ex01, ret01);
	ret01 != 0 ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J04.c
fi

if [ "$EX" = "ex02" ]
then
echo '
	/*EX02*/
	printf("<=================================================>\\n");
	printf("Ex 02 : ft_iterative_power\\n");
	printf("\\n");
	int val_send;
	int val_send2;
	int val_ret;
	int correct;
	correct = 0;
	val_send = 0;
	val_send2 = 5;
	val_ret = ft_iterative_power(val_send, val_send2);
	printf("Test #0 avec \"%d^%d\" :\\n0\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 0 ? correct++ : 0;
	val_send = 5;
	val_send2 = 0;
	val_ret = ft_iterative_power(val_send, val_send2);
	printf("Test #1 avec \"%d^%d\" :\\n1\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 1 ? correct++ : 0;
	val_send = -25;
	val_send2 = 6;
	val_ret = ft_iterative_power(val_send, val_send2);
	printf("Test #2 avec \"%d^%d\" :\\n244140625\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 244140625 ? correct++ : 0;
	val_send = -2;
	val_send2 = -5;
	val_ret = ft_iterative_power(val_send, val_send2);
	printf("Test #3 avec \"%d^%d\" :\\n0\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 0 ? correct++ : 0;
	val_send = 10;
	val_send2 = 6;
	val_ret = ft_iterative_power(val_send, val_send2);
	printf("Test #4 avec \"%d^%d\" :\\n1000000\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != 1000000 ? correct++ : 0;
	val_send = -2;
	val_send2 = 31;
	val_ret = ft_iterative_power(val_send, val_send2);
	printf("Test #5 avec \"%d^%d\" :\\n-2147483648\\n%d : result\\n\\n", val_send, val_send2, val_ret);
	val_ret != -2147483648 ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J04.c
fi

if [ "$EX" = "ex03" ]
then
echo '
	/*EX03*/
	printf("<=================================================>\\n");
	printf("Ex 03 : ft_recusive_power\\n");
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
' >> J04.c
fi

if [ "$EX" = "ex04" ]
then
echo '
	/*EX04*/
	printf("<=================================================>\\n");
	printf("Ex 04 : ft_fibonacci\\n");
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
' >> J04.c
fi

if [ "$EX" = "ex05" ]
then
echo '
	/*EX05*/
	printf("<=================================================>\\n");
	printf("Ex 05 : ft_sqrt\\n");
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
' >> J04.c
fi

if [ "$EX" = "ex06" ]
then
echo ' 
	/*EX06*/
	printf("<=================================================>\\n");
	printf("Ex 06 : ft_is_prime\\n");
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
	val_send = 214583500;
	val_correct = 0;
	val_ret = ft_is_prime(val_send);
	printf("Test #6 avec \"%d\" :\\n%d\\n%d : result\\n\\n", val_send, val_correct, val_ret);
	val_ret != val_correct ? correct++ : 0;
	correct == 0 ? printf("\033[32m<=====================SUCESS======================>\\n"): printf("\033[31m<=====================FAIL !======================>\\n");
	printf("\033[0m");
' >> J04.c
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
' >> J04.c
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
' >> J04.c
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
' >> J04.c
fi


echo "
	return (0);
}" >> J04.c

gcc -Wall -Wextra -Werror J04.c ft_*.c $1 -o ./.KOmpilaThorJ04_compile

./.KOmpilaThorJ04_compile

rm ./.KOmpilaThorJ04_compile

norminette -R CheckForbiddenSourceHeader $1

