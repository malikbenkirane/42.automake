# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mben-kir <mben-kir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/04 19:05:37 by mben-kir          #+#    #+#              #
#    Updated: 2018/07/08 20:46:34 by mben-kir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NORMETTE_FLAGS := -R CheckForbiddenSourceHeader
CURRENT_BRANCH := $(shell git branch --abbrev=0 | grep '^*' | cut -c 3-)
# 	branch=`
# 	if test "$$branch" != "master" ; \
# 	then echo 'Warning: not branch master' ; s \
# 	fi ; echo $$branch)

SUBDIRS := $(shell \
	for file in `git ls-tree -r ${CURRENT_BRANCH} --name-only`; \
	do dirname $$file; \
	done | uniq )

DEPS := 
test: ${DEPS} ${SUBDIRS}

${SUBDIRS}:
	@if test "${CURRENT_BRANCH}" != master ; then \
		echo "Warning: not on branch master (branch: * ${CURRENT_BRANCH})" ; \
		fi
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
