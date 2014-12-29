dotfiles
========

personal config files

yeah, some of these aren't literally dot files, cry my hand full

## getting started kind of stuff

### generating a ssh key
```ssh-keygen -t rsa```
Probably be smart to go ahead and save your ~/.ssh/id_rsa.pub and ~/.ssh_ida_rsa into Keepass while you are at it. You can generate one with ssh-keygen if you don't have one already. If we were real fancy we would probably store this in our ansible keyring too but...meh, lazyness prevails again!

### generate a random password for the vault
If you don't already have a vault password in your KeePass keyring generate one and immediately save it in a KeePass ring in your dropbox acount, that way you will have it.

yeah I know there are a few useless bits of non-entropy in here, I don't care.
```
openssl genrsa -out ~/vault_pass.txt 2048
```
### install a currentish ansible from their repo
unfortunately the stock version of ansible in Ubuntu 14.04 LTS is too old and has a bug that prevents it from working with the vault properly, so install a current version

```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
