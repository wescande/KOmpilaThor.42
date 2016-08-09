/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_rev_params.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/09 21:46:42 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/09 22:05:50 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_putchar(char c);

int		main(int argc, char **argv)
{
	int j;

	while (--argc > 0)
	{
		j = 0;
		while (argv[argc][j])
		{
			ft_putchar(argv[argc][j]);
			++j;
		}
		ft_putchar('\n');
	}
}
