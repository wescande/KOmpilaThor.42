/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wescande <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/03 01:58:21 by wescande          #+#    #+#             */
/*   Updated: 2016/08/06 11:07:19 by wescande         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_putchar(char c);

void	ft_putnbr(int nb)
{
	int length;
	int writing;

	if (nb == -2147483648)
	{
		ft_putchar('-');
		ft_putchar('2');
		ft_putnbr(147483648);
	}
	else
	{
		nb < 0 ? ft_putchar('-') : 0;
		nb < 0 ? nb *= -1 : 0;
		length = 1000000000;
		writing = 1;
		while (length >= 1)
		{
			if (nb >= (length - 1) || writing == 0)
			{
				writing = 0;
				ft_putchar((nb / length) + 48);
				nb = nb % length;
			}
			length /= 10;
		}
	}
}
