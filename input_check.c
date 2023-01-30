/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   input_check.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mokatova <mokatova@student.42wolfsburg.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/25 21:56:49 by mokatova          #+#    #+#             */
/*   Updated: 2022/01/26 01:39:52 by mokatova         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fdf.h"

void	input_check(int argc, char **argv)
{
	int	fd;

	if (argc < 2)
	{
		errno = 22;
		perror("An error occurred");
		exit(1);
	}
	if (argc > 2)
	{
		errno = 7;
		perror("An error occurred");
		exit(1);
	}
	fd = open(argv[1], O_RDONLY);
	if (fd < 0)
	{
		perror("An error occurred");
		exit(1);
	}
}
