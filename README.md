# VAGRANT PROJECT

### INSTALLATION AND INITIALIZATION

Vagrant was downloaded along with a virtual box. Once downloaded **$ vagrant init** was used to initialize a project. This creates a vagrantfile which is then used to provision a vm.

### PRE-PROVISIONING

Before a vm is created, Vagrantfile is inititalized and configured for using a specific version, network settings as well as set the name of the vm and the memory allocated for the vm.

### PROVISIONING

A shell script is created where commands to install git, apache and mysql on the vm are written. Once installed, conditional statements were used to check if the installation was successfull or not. Furthermore, commands to clone a git repo were also included in the shell script.
