# 📚 Libft - Your very first own library

*Libft* is a comprehensive C library developed as part of the 42 curriculum. It implements essential and reusable functions for string manipulation, memory management, linked lists, and much more.

## 🎯 Overview

This project aims to create your own C library, replicating and extending the standard functions of libc. The library contains a set of versatile functions that your programs will use to efficiently process data.

---

## 📋 Library Contents

### 🔤 Character Functions (`char/`)
Character checking and conversion:
- `ft_isalpha()` - Checks if character is a letter
- `ft_isdigit()` - Checks if character is a digit
- `ft_isalnum()` - Checks if character is alphanumeric
- `ft_isascii()` - Checks if character is ASCII
- `ft_isprint()` - Checks if character is printable
- `ft_toupper()` - Converts to uppercase
- `ft_tolower()` - Converts to lowercase

### 🔢 Numeric Conversions (`int/`)
- `ft_atoi()` - Converts string to integer
- `ft_itoa()` - Converts integer to string

### 📝 String Manipulation (`str/`)
Complete functions for processing strings:
- `ft_strlen()` - Calculates string length
- `ft_strchr()` / `ft_strrchr()` - Searches for character
- `ft_strdup()` - Duplicates a string
- `ft_strjoin()` - Concatenates two strings
- `ft_strtrim()` - Removes specified characters
- `ft_substr()` - Extracts a substring
- `ft_split()` - Splits string by delimiter
- `ft_split_whitespace()` - Splits by whitespace
- `ft_strlcpy()` / `ft_strlcat()` - Secure copy/concatenation
- `ft_strnstr()` - Searches for substring
- `ft_strncmp()` / `ft_strcmp()` - Compares strings
- `ft_strmapi()` - Applies function to each character
- `ft_striteri()` - Iterates with index

### 💾 Memory Management (`mem/`)
Memory block manipulation:
- `ft_memset()` - Fills memory with value
- `ft_bzero()` - Fills with zeros
- `ft_memcpy()` - Copies memory
- `ft_memmove()` - Safe copy (overlapping areas)
- `ft_memchr()` - Searches for byte
- `ft_memcmp()` - Compares memory blocks
- `ft_calloc()` - Allocates and initializes to zero

### 📦 Linked Lists (`lst/` - Bonus)
Implementation of a linked list structure:
```c
typedef struct s_list {
    void *content;
    struct s_list *next;
} t_list;
```
Available operations:
- `ft_lstnew()` - Creates new node
- `ft_lstadd_front()` / `ft_lstadd_back()` - Adds to list
- `ft_lstsize()` - Calculates list size
- `ft_lstlast()` - Retrieves last node
- `ft_lstdelone()` - Deletes a node
- `ft_lstclear()` - Clears the list
- `ft_lstiter()` - Iterates over list
- `ft_lstmap()` - Applies function to each element

### 🖨️ Formatted Output (`miscellaneous/`)
Writing to file descriptor:
- `ft_putchar_fd()` - Writes a character
- `ft_putstr_fd()` - Writes a string
- `ft_putendl_fd()` - Writes string with newline
- `ft_putnbr_fd()` - Writes a number

### 📖 ft_printf (`ft_printf/`)
Implementation of a simplified `printf()` version:
- `ft_printf()` - Custom printf
- Supports formats: `%s`, `%d`, `%i`, `%x`, `%X`, `%c`, `%u`, `%p`

### 📄 Get Next Line (`get_next_line/`)
Line-by-line file reading:
- `get_next_line()` - Reads next line from file descriptor
- Configurable `BUFFER_SIZE` for optimized reading


