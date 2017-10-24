.PHONY: install facts

PLAYBOOK?=site
VAULT_PASS=~/vault-own-password
EXTRA?=
LIMIT?=
INVENTORY=inventory.yml

dependency:
	ansible-galaxy install -r requirements.yml

install:
	ansible-playbook --inventory-file=$(INVENTORY) mac.yml -v
