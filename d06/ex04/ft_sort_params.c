/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_params.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/09 21:46:42 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/09 23:07:36 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_putchar(char c);

int		ft_strcmp(char *s1, char *s2)
{
	while (*s1 && *s2 && (unsigned char)*s1 == (unsigned char)*s2)
	{
		++s1;
		++s2;
	}
	return ((unsigned char)*s1 - (unsigned char)*s2);
}

void	ft_sort_string_table(char **tab, int size)
{
	int cpt;
	int bl_non_fini;
	char *tmp;

	cpt = 0;
	bl_non_fini = 1;
	while (bl_non_fini)
	{
		bl_non_fini = 0;
		while (cpt < (size - 1))
		{
			if (ft_strcmp(tab[cpt], tab[cpt + 1]) > 0)
			{
				tmp = tab[cpt];
				tab[cpt] = tab[cpt + 1];
				tab[cpt + 1] = tmp;
				bl_non_fini = 1;
			}
			cpt++;
		}
		cpt = 0;
	}
}

int		main(int argc, char **argv)
{
	int i;
	int j;

	i = 1;
	ft_sort_string_table(argv, argc);
	while (i < argc)
	{
		j = 0;
		while (argv[i][j])
		{
			ft_putchar(argv[i][j]);
			++j;
		}
		ft_putchar('\n');
		++i;
	}
}
