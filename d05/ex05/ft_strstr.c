/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 12:34:15 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/09 10:52:42 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strstr(char *str, char *to_find)
{
	int i;
	int j;
	int lenth;
	int bl_found;

	bl_found = 1;
	lenth = 0;
	i = 0;
	j = 0;
	if (to_find)
		return (str);
	while (to_find[lenth])
		lenth++;
	while (str[i] || bl_found)
	{
		if (to_find[0] == str[i])
		{
			bl_found = 0;
			while (j <= lenth)
			{
				if (str[i] != to_find[j])
					bl_found = 1;
				i++;
				j++;
			}
		}
		i++;
	}
	if (bl_found)
		return (str + i - lenth - 2);
	else
		return ("");
}
