#!/bin/bash

SCRIPT_NAME = git-uncommit
MAN_PATH = ~/.myman/man/man1

docs:
	mkdir -p ${MAN_PATH}
	pandoc man/${SCRIPT_NAME}.md -s -t man -o ${SCRIPT_NAME}.1
	mv ${SCRIPT_NAME}.1 ${MAN_PATH}
	gzip ${MAN_PATH}/${SCRIPT_NAME}.1

install: docs
	mkdir -p ~/bin
	cp src/${SCRIPT_NAME} ~/bin
	chmod +x ~/bin/${SCRIPT_NAME}
