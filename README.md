# Ansible
## Roles
### Common
* "Hello World!!!"
### gitpull
* pull latest code from git using parameterized username, password and git url
* Variables:
  * username
  * repository
  * destination
### windows_prerequisites
* Validate powershell version
* Validate installed .NET Framework version
* Validate local admin group
* Validate Service Principal Name
* Verify WinRM service up and listening.
* Variables:
  * min_powershell_version
  * min_dotnet_version