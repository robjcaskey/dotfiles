dotfiles
========

personal config files

yeah, some of these aren't literally dot files, cry my hand full

## getting started kind of stuff
If you don't already have a key generate one, but then immediately save it in a KeePass ring in your dropbox acount, that way you will, you know, have it.
### generate a key
yeah I know there are a few useless bits of non-entropy in here, I don't care.
```
openssl genrsa -out ~/vault_pass.txt 2048
```
### get ansible from their repo
unfortunately the stock version of ansible in Ubuntu 14.04 LTS is too old and has a bug that prevents it from working with the vault properly, so install a current version

```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
