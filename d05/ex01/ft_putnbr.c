/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/03 18:04:10 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/07 15:25:01 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_putchar(char c);

void	absolu(int *nb)
{
	if (*nb < 0)
	{
		*nb = -1 * *nb;
		ft_putchar('-');
	}
}

void	loop(int *res, int i, int nb)
{
	absolu(&nb);
	if (nb)
	{
		while (nb)
		{
			res[i] = nb % 10;
			nb /= 10;
			i++;
		}
		i--;
	}
	else
		res[i] = 0;
	while (i >= 0)
	{
		ft_putchar(res[i] + 48);
		i--;
	}
}

void	ft_putnbr(int nb)
{
	int res[11];
	int i;

	i = 0;
	if (nb == -2147483648)
	{
		ft_putchar('-');
		ft_putchar('2');
		ft_putnbr(147483648);
	}
	else
	{
		loop(res, i, nb);
	}
}
