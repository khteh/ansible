#!/bin/bash
ansible-playbook --vault-id windows@vault-secret -i windwos.yml site.yml