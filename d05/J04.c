#include <stdio.h>

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
	 
	/*EX07*/
	printf("<=================================================>\n");
	printf("Ex 07 : ft_find_next__prime\n");
	printf("\n");
	int val_ret;
	int correct = 0;
	int val_send[] = {0, 1, 2, 3, 4, 5, 6, 8, 12, 23, 24, -25, -2147483648, 2147483647, 2147483646, 456, 369};
	int val_correct[] = {2, 2, 2, 3, 5, 5, 7, 11, 13, 23, 29, 2, 2, 2147483647, 2147483647,457, 373};
	int i = 0;
	while (i < 17)
	{
		printf("Test #%d avec \"%d\" :\n", i, val_send[i]);
		val_ret = ft_find_next_prime(val_send[i]);
		printf("%d\n%d : result\n\n", val_correct[i], val_ret);
		val_ret != val_correct[i] ? correct++ : 0;
		i++;
	}
	correct == 0 ? printf("[32m<=====================SUCESS======================>\n"): printf("[31m<=====================FAIL !======================>\n");
	printf("[0m");


	return (0);
}
