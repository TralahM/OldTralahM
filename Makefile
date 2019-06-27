ENVIRONMENT :=_env/
default : help
$(ENVIRONMENT):
	pyvenv "$@"
clean:
	rm -rf "$(ENVIRONMENT)"
setup:
	@echo "make $(ENVIRONMENT);"
	@echo "source $(ENVIRONMENT)bin/activate;"
	@echo "pip install --upgrade pip 'Nikola[extras]';"
help:
	@echo "To setup Nikola environment, please use 'eval \$$(make setup)'"
$ eval $(make setup)
