#!/bin/bash
ansible-playbook --vault-id windows@vault-secret -i windwos.yml site.yml
ansible-playbook --vault-id local@vault-secret -i localhost.yml local_playbook.yml
ansible-playbook -i localhost.yml aws_ec2_info.yml
ansible-playbook -i localhost.yml start_aws_ec2_playbook.yml --tags=launch_ec2
ansible-playbook -i localhost.yml stop_aws_ec2_playbook.yml --tags=stop_all_ec2
