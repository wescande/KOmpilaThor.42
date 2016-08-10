/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_srclcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 16:19:58 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/10 03:48:02 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

unsigned int	ft_strlcpy(char *dest, char *src, unsigned int size)
{
	unsigned int src_len;
	unsigned int dest_len;

	dest_len = 0;
	src_len = 0;
	while (src[src_len])
		++src_len;
	if (size > 0)
	{
		while (size - 1 && (dest[dest_len] = src[dest_len]))
		{
			++dest_len;
			--size;
		}
		if (size == 1)
		{
			dest[dest_len] = '\0';
			--size;
		}
	}
	return (src_len);
}
