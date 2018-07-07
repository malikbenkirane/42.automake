# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mben-kir <mben-kir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/04 19:05:37 by mben-kir          #+#    #+#              #
#    Updated: 2018/07/07 14:59:23 by mben-kir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NORMETTE_FLAGS := -R CheckForbiddenSourceHeader
# TODO change to load from environment variable
SUBDIRS := $(shell \
	for file in `git ls-tree -r master --name-only`; \
	do dirname $$file; \
	done)

# TODO remove ft_putchar.o dependencies
test: ft_putchar.o ${SUBDIRS}

${SUBDIRS}:
	@echo
	@echo Subdir $@
	@echo
	$(MAKE) -C $@
	@echo '---------------------------------------------------------------'

norme: 
	for file in $$(git ls-tree -r master --name-only) ; do \
		norminette ${NORMETTE_FLAGS} $$file ; \
	done

clean:
	@find . -exec file \{\} \; \
	| grep x86_64 \
	| cut -d: -f1 \
	| xargs rm -v

%.o: %.c
	norminette -R CheckForbiddenSourceHeader $< \
		&& gcc -o $@ -Wall -Werror -Wextra -c $<

.PHONY: test ${SUBDIRS}
