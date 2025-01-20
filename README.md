# Ansible

## Prerequisites

- `python3`

## Vault password

- Store vault password used to encrypt files and/or variables in a hidden file `.vault-secret`. The hidden file could be of any filename.

### To work with AWS resources:

- `pip3 install boto`
- `pip3 install boto3`
- Install aws CLI and run `aws configure`

## Roles

### Common

- "Hello World!!!"

### gitpull

- pull latest code from git using parameterized username, password and git url
- Variables:
  - username
  - repository
  - destination

### windows_prerequisites

- Validate powershell version
- Validate installed .NET Framework version
- Validate local admin group
- Validate Service Principal Name
- Verify WinRM service up and listening.
- Variables:
  - min_powershell_version
  - min_dotnet_version

## Local playbook

- Create an encrypted variable data file called `group_vars/local/.local_vault.yml` with the vault-id `local` and vault password stored in `.vault-secret`. The content of the file should include all the variables' key-value pairs. You can add new variables or replace the default ones in `group_vars/local/local.yml`.
  `$ ansible-vault create --vault-id local@.vault-secret group_vars/local/.local_vault.yml`

```
var_password: <github access token>
```

- To edit existing variables data file:

```
$ ansible-vault edit --vault-id local@.vault-secret group_vars/local/.local_vault.yml
```

- To run:

```
$ ansible-playbook --vault-id local@.vault-secret -i localhost.yml local_playbook.yml
```

### AWS

- To view AWS EC2 resources:

```
$ ansible-playbook -i localhost.yml aws_ec2_info.yml
```

- To start AWS EC2 instance:

```
$ ansible-playbook -i localhost.yml start_aws_ec2_playbook.yml --tags=launch_ec2
```

- To stop ALL AWS EC2 instances:

```
$ ansible-playbook -i localhost.yml stop_aws_ec2_playbook.yml --tags=stop_all_ec2
```
