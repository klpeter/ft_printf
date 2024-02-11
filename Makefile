Library = libftprintf

files = ft_printf \
		ft_putnumbers \
		ft_putcharl \
		ft_putstrl \
		

# bonusfiles = ft_lstnew \
		

Compiler = cc

CmpFlags = -Wall -Wextra -Werror

OUTN = $(Library).a

LIBFT_DIR = libft

LIBFT_FILES = ft_atoi \
			ft_bzero \
			ft_calloc \
			ft_isalnum \
			ft_isalpha \
			ft_isascii \
			ft_isdigit \
			ft_isprint \
			ft_itoa \
			ft_memchr \
			ft_memcmp \
			ft_memcpy \
			ft_memmove \
			ft_memset \
			ft_putchar_fd \
			ft_putendl_fd \
			ft_putnbr_fd \
			ft_putstr_fd \
			ft_split \
			ft_strchr \
			ft_strdup \
			ft_striteri \
			ft_strjoin \
			ft_strlcat \
			ft_strlcpy \
			ft_strlen \
			ft_strmapi \
			ft_strncmp \
			ft_strnstr \
			ft_strrchr \
			ft_strtrim \
			ft_substr \
			ft_tolower \
			ft_toupper \
			ft_lstnew \
			ft_lstadd_front \
			ft_lstsize \
			ft_lstlast \
			ft_lstadd_back \
			ft_lstdelone \
			ft_lstclear \
			ft_lstiter \
			ft_lstmap \

LIBFT_CFILES = $(LIBFT_FILES:%=$(LIBFT_DIR)/%.c)

CFILES = $(files:%=%.c)

# CFILESB = $(bonusfiles:%=%.c)
LIBFT_OFILES = $(LIBFT_FILES:%=$(LIBFT_DIR)/%.o)

LIBFT_OFILESROOT = $(LIBFT_FILES:%=%.o)

OFILES = $(files:%=%.o)

# OFILESB = $(bonusfiles:%=%.o)

NAME = libftprintf.a

$(NAME): $(OFILES) $(LIBFT_OFILES)
		$(Compiler) $(CmpFlags) -c $(CFILES) $(LIBFT_CFILES)
		ar -rc $(OUTN) $(OFILES) $(LIBFT_OFILES)

# bonus: $(OFILESB)
# 		$(Compiler) $(CmpFlags) -c $(CFILESB)
# 		ar -rc $(OUTN) $(OFILESB)

all: $(NAME)

clean:
		rm -f $(OFILES)
		rm -f $(LIBFT_OFILES)
		rm -f $(LIBFT_OFILESROOT)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re