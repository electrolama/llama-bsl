PYTHON ?= python

build:
	@$(PYTHON) -m build

release: build
	@$(PYTHON) -m twine upload dist/*

release-test: build
	@$(PYTHON) -m twine upload --repository testpypi dist/*

dist-clean:
	rmdir /s dist

pip-install:
	@$(PYTHON) -m pip install llama-bsl

pip-install-test:
	@$(PYTHON) -m pip install --index-url https://test.pypi.org/simple/ llama-bsl

pip-uninstall:
	@$(PYTHON) -m pip uninstall llama-bsl

new-env:
	@$(PYTHON) -m venv venv

del-env:
	rmdir /s venv
