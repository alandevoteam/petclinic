The Ansible playbook can use command using extra vars for passing the azure ubuntu host information. When using extra vars in the command, sensitive information can be seperated from the code and gives flexibility to dynamically customize the playbook. The following information must be defined using extra vars:

ubuntu_host=127.0.0.1 ansible_user=username ansible_password=password

To run the complete playbook please use the following:

ansible-playbook -i devops/ansible/inventory.yml adds/ansible/deploy.yml -e "ubuntu_host= ansible_user= ansible_password="

