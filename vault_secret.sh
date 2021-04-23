#!/bin/bash
ansible-vault create --vault-id windows@vault-secret group_vars/windows/windows_vault.yml
ansible-vault create --vault-id local@vault-secret group_vars/local/local_vault.yml