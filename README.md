<h1 align="center">Ansible Workstation</h1>
<h2 align="center">Set up a fully featured Workstation using a single Ansible script 🚀</h2>
<br/>

## 🌟 Features

- Workstation services are deployed on Docker containers 🐋

## 📌 Requirements

### Control node

- It must run a full Linux environment.
- Ansible package (> 2.15.0) installed.
- Should have [connectivity](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html#connecting-to-hosts-behavioral-inventory-parameters) with the managed nodes.

### Managed nodes

- It must run a Debian based environment (Debian, Ubuntu, etc).

## 💻 Installation

1. Clone this repo in your Ansible Control node:

    ```BASH
    git clone https://github.com/JMOrbegoso/ansible-workstation.git
    cd ansible-workstation
    ```

2. Customice the inventory/hosts.yaml file:

    ```BASH
    vim ./inventory/hosts.yaml
    ```

3. Edit the playbook:

    ```BASH
    vim ./workstation.yaml
    ```

4. Edit the variable files:

    ```BASH
    vim ./group_vars/all/main.yaml
    vim ./group_vars/workstation/main.yaml
    ```

5. Create your ansible vault 🔒:

    ```BASH
    ansible-vault create ./group_vars/workstation/secrets.yaml
    ```

6. Check connectivity with your managed nodes 🛜:

    ```BASH
    ansible workstation -m ping --ask-vault-pass --ask-pass
    ```

7. Run the proyect 🚀:

    ```BASH
    ansible-playbook workstation.yaml --ask-become-pass --ask-vault-pass --ask-pass
    ```

## 👤 Author

**JMOrbegoso**

- Website: [jmorbegoso.com](https://www.jmorbegoso.com)
- Blog: [blog.jmorbegoso.com](https://blog.jmorbegoso.com)
- Github: [@JMOrbegoso](https://github.com/JMOrbegoso/)
- LinkedIn: [@jmorbegosodev](https://www.linkedin.com/in/jmorbegosodev/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/JMOrbegoso/ansible-workstation/issues).

## ⭐️ Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2024 [JMOrbegoso](https://github.com/JMOrbegoso).<br />
This project is [MIT](https://github.com/JMOrbegoso/ansible-workstation/blob/main/LICENSE) licensed.
