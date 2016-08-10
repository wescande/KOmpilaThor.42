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
#define BLU 36
#define WHI 37

void	ft_putnbr(int nb);

void	ft_putstr(char *str);

int		ft_atoi(char *str);

char		*ft_strcpy(char *dest, char *src);
char		*ft_strncpy(char *dest, char *src, unsigned int n);
char		*ft_strstr(char *str, char *to_find);
int			ft_strcmp(char *s1, char *s2);
int			ft_strncmp(char *s1, char *s2, unsigned int n);
char		*ft_strupcase(char *str);
char		*ft_strlowcase(char *str);
char		*ft_strcapitalize(char *str);
int			ft_str_is_alpha(char *str);
int			ft_str_is_numeric(char *str);
int			ft_str_is_uppercase(char *str);
int			ft_str_is_lowercase(char *str);
int			ft_str_is_printable(char *str);
char		*ft_strcat(char *dest, char *src);
char		*ft_strncat(char *dest, char *src, int nb);
unsigned	int ft_strlcat(char *dest, char *src, unsigned int size);
unsigned	int ft_strlcpy(char *dest, char *src, unsigned int size);
void		ft_putnbr_base(int nbr, char *base);

int		main(void)
{
	
	printf("<=================================================>\n");
	char *nom = "ft_strlcat";
	int correct = 0;
	printf("Ex 18 : %s\n", nom);
	if (!strcmp("ft_strlcat.c","ft_strlcat.c"))
	{
		color(32);
		printf("Nom = OK");
	}
	else
	{
		color(31);
		correct++;
		printf("Nom = ERREUR ! ! ! !");
	}
	color(0);
	printf("\n");
	char val_send[][45] = {"ilecl;;[];=-0123", "fesGF^4", "89\ff\7", "-6%54", "2147@483647", "-21474 83648", "+45632", " - 56"};
	char val_send1[][45] = {"", "", "", "", "", "", ""};
	char val_send2[][45] = {"5", "   \n++rewed", "		456pipo","[]koljejt|||||", "poule", "789*1", "-12ethop", "<<chevre"};
	unsigned int val_send3[] = {12, 6, 5, 2358, 0, 554561, 2, 36};
	unsigned int ans;
	unsigned int ret;
	int i = 0;
	while (i < 8)
	{
		printf("Test #%d avec ", i);
		color(34);
		printf("%s, %s et %d\n" , val_send[i], val_send2[i], val_send3[i]);
		color(WHI);
		strcpy(val_send1[i], val_send[i]);
		ans = strlcat(val_send[i], val_send2[i], val_send3[i]);
		printf("%d = CORRECTION (%s)", ans , val_send[i]);
		color(0);
		printf("\n");
		ret = ft_strlcat(val_send1[i], val_send2[i], val_send3[i]);
		if (ret != ans || strcmp(val_send[i], val_send1[i]))
		{
			color(RED);
			correct++;
		}
		else
			color(GRE);
		printf("%d = RESULT (%s)", ret, val_send1[i]); 
		color(0);
		printf("\n");
		i++;
	}
	if (correct == 0)
	{
		color(GRE);
		printf("\n<====================SUCCESS !======================>\n");
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
