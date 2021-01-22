#!/bin/bash
# gsettings is a pita in ansible, so doing it here. "Perfect is the enemy of good."
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"

# go on then...
python3 -m venv venv
source venv/bin/activate
pip install -Ur requirements.txt
ansible-galaxy install -r requirements.yml
ansible-playbook ./build_laptop.yml -v -u $USER -b -e ansible_python_interpreter=/usr/bin/python3

