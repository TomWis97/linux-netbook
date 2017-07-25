#!/usr/bin/env bash
if ! [ -x "$(command -v ansible)" ]; then
	sudo dnf install -y ansible
else
	echo "Ansible already installed"
fi
ansible-playbook main.yml --ask-sudo-pass
