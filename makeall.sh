#!/bin/bash
python3 -m venv venv
source venv/bin/activate
pip install -Ur requirements.txt
ansible-galaxy install -r requirements.yml
ansible-playbook ./build_laptop.yml -v -u $USER -b -e ansible_python_interpreter=/usr/bin/python3

