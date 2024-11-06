/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anfichet <anfichet@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/07 17:49:30 by anfichet          #+#    #+#             */
/*   Updated: 2024/11/06 10:21:58 by anfichet         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <errno.h>

int	ft_atoi(const char *str)
{
	size_t		i;
	long int	nb;
	int			sign;

	i = 0;
	nb = 0;
	sign = 1;
	while (str[i] == ' ' || (str[i] >= '\t' && str[i] <= '\r'))
		i++;
	if (str[i] == '-')
		sign = -sign;
	if (str[i] == '+' || str[i] == '-')
		i++;
	while (str[i] >= '0' && str[i] <= '9')
	{
		if (((nb * 10 + str[i] - '0') / 10) != nb)
		{
			errno = ERANGE;
			if (sign < 0)
				return ((int)LONG_MIN);
			return ((int)LONG_MAX);
		}
		nb = nb * 10 + str[i++] - '0';
	}
	return (nb * sign);
}
