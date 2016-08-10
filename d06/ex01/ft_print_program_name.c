/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_program_name.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/09 20:13:31 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/09 21:42:52 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_putchar(char c);

int		main(int argc, char **argv)
{
	while (**argv)
	{
		ft_putchar(**argv);
		(*argv)++;
	}
	ft_putchar('\n');
	return (0);
}
