/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anfichet <anfichet@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/27 13:04:27 by anfichet          #+#    #+#             */
/*   Updated: 2023/12/02 18:16:41 by anfichet         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# define BASE16_LOWER "0123456789abcdef"
# define BASE16_UPPER "0123456789ABCDEF"
# define BASE10 "0123456789"

# include <stdarg.h>
# include <unistd.h>

int     ft_printf(const char *str, ...) __attribute__ ((format (printf, 1, 2)));
size_t	ft_strlen(const char *str);
void	ft_putnbr_base(int nbr, char *base, int *addr_count);
void	ft_putchar(char c, int *addr_count);
void	ft_putstr(char *s, int *addr_count);
void	ft_unsigned_putnbr(unsigned long int nbr, char *base, int *addr_count);
size_t	ft_strlenpercent(const char *str);
void	ft_put_address(unsigned long int nbr, int *addr_count);
void	ft_print_format(const char specifier, va_list arg, int *addr_count);
void	ft_print_first_arg(const char *str, size_t *addr_i, int *addr_count);
void	ft_print(int *addr_count, const char *str, size_t *addr_i, va_list arg);
int     is_specifier(char c);
void	check_percent(const char *str, int *addr_count, size_t *addr_i);

#endif
