# Makefile for MyPythonProject

# Python interpreter
PYTHON3 = python3
PYTHON = python
# Virtual environment directory
VENV_DIR = .venv

start: venv activate install


# Install dependencies
install:
	$(PYTHON3) -m pip install -r requirements.txt

# Create virtual environment
venv:
	$(PYTHON3) -m venv $(VENV_DIR)

# Activate virtual environment
activate:
	. $(VENV_DIR)/bin/activate

# Run the program
run:
	$(PYTHON) JamminJobs/manage.py runserver

# Clean up
clean:
	rm -rf $(VENV_DIR)

