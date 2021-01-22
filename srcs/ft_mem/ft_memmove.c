/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ldauga <ldauga@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/25 15:34:54 by ldauga            #+#    #+#             */
/*   Updated: 2021/01/22 15:59:23 by ldauga           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "../../incs/libft.h"

void	*ft_memmove(void *dest, const void *src, size_t len)
{
	if (dest == src)
		return (dest);
	if (dest > src)
		while (len)
		{
			len--;
			((unsigned char *)dest)[len] = ((unsigned const char *)src)[len];
		}
	else
		ft_memcpy(dest, src, len);
	return ((unsigned char *)dest);
}
