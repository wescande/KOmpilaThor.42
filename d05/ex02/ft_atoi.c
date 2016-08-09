/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/04 22:49:24 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/05 13:18:05 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_atoi(char *str)
{
	int nb;
	int str_start;
	int str_len;

	nb = 0;
	str_len = 0;
	while (str[str_len] == ' ')
		str_len++;
	str_start = str_len;
	if (str[str_len] == '-' || str[str_len] == '+')
		str_len++;
	while ('0' <= str[str_len] && str[str_len] <= '9')
	{
		nb = nb * 10 + (str[str_len] - '0');
		str_len++;
	}
	if (str[str_start] == '-')
		nb *= -1;
	return (nb);
}
