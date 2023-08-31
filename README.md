
ansible-playbook --ask-become-pass --ask-vault-pass wsl.yml

ansible-playbook -t neovim --ask-become-pass --ask-vault-pass wsl.yml

ANSIBLE_ASK_VAULT_PASS=True ansible-pull -U https://github.com/DenysShch/ansible.git wsl.yml --ask-vault-password --ask-become-pass
