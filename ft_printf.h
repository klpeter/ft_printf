/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pkovacs- <pkovacs-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/11 18:00:12 by pkovacs-          #+#    #+#             */
/*   Updated: 2023/11/06 20:13:09 by pkovacs-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdlib.h>
# include <unistd.h>
# include <stdarg.h>
# include "Libft/libft.h"

typedef struct s_value
{
	int	len;
	int	error;
}		t_value;

// prototypes
int			ft_printf(const char *format, ...);
int			ft_putnum(int n, t_value *var);
int			ft_printptr(size_t ptr, t_value *var);
int			ft_puthexnum(size_t n, t_value *var, char c);
int			ft_putunnum(unsigned int n, t_value *var);
int			ft_putcharl(char c, t_value *var);
int			ft_putstrl(char *args, t_value *var);
int			ft_putcharl_error(t_value *var);

#endif
