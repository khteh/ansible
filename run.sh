#!/bin/bash
ansible-playbook --vault-id windows@vault-secret -i windwos.yml site.yml
ansible-playbook --vault-id local@vault-secret -i localhost.yml local_playbook.yml