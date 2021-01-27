#include "../../incs/libft.h"

char	*ft_realloc(char *src, int size)
{
	size_t		i;
	char	*dest;

	i = ft_strlen(src);
	if (!(dest = (char *)malloc(sizeof(char) * (i + size + 1))))
		return (0);
	i = 0;
	while (src[i])
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
	free(src);
	return (dest);
}
