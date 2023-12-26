CURRENT_DIR := $(shell pwd)
BASENAME := $(shell basename $(CURRENT_DIR))
package=$(BASENAME)

include ../cloudmesh-common/makefile.mk


readme:	
	cms man readme -p --command=config

.PHONY: help

help:
	@echo "Available targets:"
	@echo "------------------"
	@grep ": ##"  ../cloudmesh-common/makefile.mk | awk 'BEGIN {FS=": ##"}; {printf "%-11s - %s\n", $$1, $$2}'
	@echo
