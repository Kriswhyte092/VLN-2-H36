PYTHON3 = python3
VENV_DIR = venv

all: run clean

venv:
	$(PYTHON3) -m venv $(VENV_DIR)
	$(VENV_DIR)/bin/pip install -r requirements.txt

run: venv
	$(VENV_DIR)/bin/python JamminJobs/manage.py runserver

clean:
	rm -rf $(VENV_DIR)
