#!/usr/bin/env sh
/usr/local/bin/ansible $@ --vault-password-file /home/ubuntu/vault_pass.txt
