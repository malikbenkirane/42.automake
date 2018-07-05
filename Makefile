# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mben-kir <mben-kir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/04 19:05:37 by mben-kir          #+#    #+#              #
#    Updated: 2018/07/05 11:10:47 by mben-kir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SUBDIRS := ex00 ex01 ex02 ex03

test: ft_putchar.o $(SUBDIRS)

${SUBDIRS}:
	@echo
	@echo Subdir $@
	@echo
	$(MAKE) -C $@
	@echo '---------------------------------------------------------------'

clean:
	@find . -exec file \{\} \; \
	| grep x86_64 \
	| cut -d: -f1 \
	| xargs rm -v

%.o: %.c
	norminette -R CheckForbiddenSourceHeader $< \
		&& gcc -o $@ -Wall -Werror -Wextra -c $<

.PHONY: test $(SUBDIRS)
