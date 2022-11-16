#!/bin/bash

SCRIPT_NAME = git-uncommit
MANPATH = ~/.local/share/man/man1

all: install

docs:
	mkdir -p ${MANPATH}
	pandoc man/${SCRIPT_NAME}.md -s -t man -o ${SCRIPT_NAME}.1
	mv ${SCRIPT_NAME}.1 ${MANPATH}
	gzip ${MANPATH}/${SCRIPT_NAME}.1

install: docs
	mkdir -p ~/bin
	cp src/${SCRIPT_NAME} ~/bin
	chmod +x ~/bin/${SCRIPT_NAME}
