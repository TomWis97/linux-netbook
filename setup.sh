#!/usr/bin/env bash
sudo dnf install -y ansible
cd ansible
ansible-playbook main.yml --ask-sudo-pass
