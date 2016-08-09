/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmuller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 13:20:52 by nmuller           #+#    #+#             */
/*   Updated: 2016/08/09 10:47:16 by nmuller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_strncmp(char *s1, char *s2, unsigned int n))
{ 
	while (*s1 && *s2 && (unsigned char)*s1 == (unsigned char)*s2 && n--)
	{

	}
	return ((unsigned char)*s1 - (unsigned char)*s2);
}
