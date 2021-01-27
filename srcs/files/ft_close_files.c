/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_close_files.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ldauga <ldauga@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/27 14:45:08 by ldauga            #+#    #+#             */
/*   Updated: 2021/01/27 14:47:16 by ldauga           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

int	ft_close_files(int fd)
{
	if (!fd)
		return (-1);
	return (close(fd));
}