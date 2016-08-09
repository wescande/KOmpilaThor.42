/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 10:29:48 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/09 10:43:31 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strncpy(char *dest, char *src, unsigned int n)
{
	unsigned int dest_lenth;
	unsigned int src_lenth;
	unsigned int cpt;

	dest_lenth = 0;
	src_lenth = 0;
	cpt = 0;
	while (dest[dest_lenth])
		dest_lenth++;
	while (src[src_lenth])
		src_lenth++;
	while (cpt < src_lenth && cpt < n)
	{
		dest[cpt] = src[cpt];
		cpt++;
	}
	while (cpt < dest_lenth && cpt < n)
	{
		dest[cpt] = '\0';
		cpt++;
	}
	return (dest);
}
