PYTHON ?= python

ifeq ($(OS),Windows_NT)
    RM = powershell Remove-Item -Recurse -Force -ErrorAction Ignore
else
    RM = rm -rf
endif

build: dist-clean
	@$(PYTHON) -m build

release: build
	@$(PYTHON) -m twine upload dist/*

release-test: build
	@$(PYTHON) -m twine upload --repository testpypi dist/*

dist-clean:
#	echo here is just so Remove-Item's return code is ignored. 
	$(RM) dist/, build/, llama_bsl.egg-info/, llama-bsl-*/ || echo "."

pip-uninstall:
	@$(PYTHON) -m pip uninstall llama-bsl

pip-install:
	@$(PYTHON) -m pip install llama-bsl

pip-install-test:
	@$(PYTHON) -m pip install --index-url https://test.pypi.org/simple/ llama-bsl

del-env:
#	echo here is just so Remove-Item's return code is ignored. 
	$(RM) venv/ || echo "."

new-env: del-env
	@$(PYTHON) -m venv venv

install-build-dep:
	sudo @$(PYTHON) -m pip install virtualenv build wheel twine
