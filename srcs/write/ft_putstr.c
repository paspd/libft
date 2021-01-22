#include "../../incs/libft.h"

void    ft_putstr(char *str)
{
    int i;

    i = 0;
    if (!str)
        return ;
    while (str[i++])
        ft_putchar(str[i]);
}