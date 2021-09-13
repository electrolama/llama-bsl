PYTHON ?= python3

build:
	@$(PYTHON) -m build

release: build
	@$(PYTHON) -m twine upload dist/*

release-test: build
	@$(PYTHON) -m twine upload --repository testpypi dist/*

dist-clean:
	rm -rf dist

pip-uninstall:
	@$(PYTHON) -m pip uninstall llama-bsl

pip-install:
	@$(PYTHON) -m pip install llama-bsl

pip-install-test:
	@$(PYTHON) -m pip install --index-url https://test.pypi.org/simple/ llama-bsl

new-env:
	@$(PYTHON) -m venv venv

del-env:
	rm -rf venv

install-build-dep:
	sudo @$(PYTHON) -m pip install virtualenv build wheel twine

