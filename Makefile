VENV ?= .venv
PIP ?= ${VENV}\Scripts\pip.exe
PYTHON ?= python

.DEFAULT: all
all: ${VENV}
	@echo Done
	
${VENV}:
	${PYTHON} -mvenv ${VENV}
	
.PHONY: requirements
requirements:
	${PIP} install -U setuptools wheel
	${PIP} install -r requirements.txt