#!/bin/bash

if [ -z "$I_WANT_TO_BREAK_MY_SYSTEM" ]; then
	echo "Don't use this script" >&2
	exit 0 
fi

apt-get update -qq
apt-get install python python-pip python-dev -yqq
pip install -r requirements.txt
ansible-playbook -c local --limit "dlbox:127.0.0.1" playbook.yml  -i "dlbox,"
