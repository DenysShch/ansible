
```shell
sudo apt-get updage && sudo apt-get upgrage
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

ANSIBLE_ASK_VAULT_PASS=True ansible-pull -U https://github.com/DenysShch/ansible.git wsl.yml --ask-vault-password --ask-become-pass
```



```shell
# Install local
ansible-playbook --ask-become-pass --ask-vault-pass wsl.yml

# Install local
ansible-playbook -t neovim --ask-become-pass --ask-vault-pass wsl.yml
```

