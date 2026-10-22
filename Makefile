HUGO ?= hugo

.PHONY: all build server

all: build

build:
	$(HUGO) --gc --minify --panicOnWarning --printI18nWarnings --printPathWarnings

server:
	$(HUGO) server --bind 127.0.0.1 --buildDrafts --disableFastRender
