
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   KompilaThorJ05.compile                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wescande <wescande@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/08 12:10:30 by wescande          #+#    #+#             */
/*   Updated: 2016/08/08 12:10:32 by wescande         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define color(p) printf("[%dm", p)
#define RED 31
#define GRE 32
#define BLU 34

void	ft_putnbr(int nb);

void	ft_putstr(char *str);

int		ft_atoi(char *str);

char	*ft_strcpy(char *dest, char *src);
char	*ft_strncpy(char *dest, char *src, unsigned int n);
char	*ft_strstr(char *str, char *to_find);

int		main(void)
{
	
	printf("<=================================================>\n");
	char *nom = "ft_strstr";
	printf("Ex 03 : %s\n", nom);
	if (!strcmp("ft_strstr.c","ft_strstr.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		color(31);
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\n");
	char val_send[15][15] = {"0?l;;[];=-0123", "15^4", "89\\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56"};
	char val_send2[15][15] = {"5", "15" ,"7", "dsfsdgwgww87", "-560"};
	char ret[15];
	char ans[15];
	int correct = 0;
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s et %s\n" , val_send[i], val_send2[i]);
		color(32);
		strcpy(ans, strstr(val_send[i], val_send2[i]));
		printf("%s = ANSWER", ans);
		color(0);
		printf("\n");
		strcpy(ret, ft_strstr(val_send[i], val_send2[i]));
		if (strcmp(ret,ans))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%s = RESULT", ret); 
		color(0);
		printf("\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\n<====================SUCESS !======================>\n");
	}
	else
	{
		color(RED);
		printf("\n<====================FAIL ! ! ! !======================>\n");
	}
	color(0);
	printf("\n");



	return (0);
}
