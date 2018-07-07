# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mben-kir <mben-kir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/04 19:05:37 by mben-kir          #+#    #+#              #
#    Updated: 2018/07/07 16:35:18 by mben-kir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NORMETTE_FLAGS := -R CheckForbiddenSourceHeader

SUBDIRS := $(shell \
	for file in `git ls-tree -r master --name-only`; \
	do dirname $$file; \
	done)

DEPS := 
test: ${DEPS} ${SUBDIRS}

${SUBDIRS}:
	@echo
	@echo Subdir $@
	@echo
	$(MAKE) -C $@
	@echo '---------------------------------------------------------------'

norme: 
	@for dir in ${SUBDIRS} ; do \
		$(MAKE) -C $$dir norme ; \
	done

clean:
	@find . -exec file \{\} \; \
	| grep x86_64 \
	| cut -d: -f1 \
	| xargs rm -v

.PHONY: test ${SUBDIRS}
