.PHONY: virtualenv
virtualenv:       ## Create a virtual environment.
	@echo "creating virtualenv ..."
	@python -m venv venv
	@echo "!!! Please run 'source .venv/bin/activate' to enable the environment in a unix environment !!!"
	@echo "!!! Please run 'venv/Scripts/actiavte.bat' to enable the environment in cmd !!!"
	@echo "!!! PleaPlease run 'venv/Scripts/Activate.ps1' to enable the environment in PowerShell"
	@echo "!!! 'deactivate' to leave virtual environement !!!"

.PHONY: requirements
requirements:
	@echo "installing requirements..."
	@pip install -r requirements.txt

.PHONY: update
update:
	@echo "updating requirements..."
	@pip install -r requirements.txt
	@pip check
	@ pip freeze > requirements.txt