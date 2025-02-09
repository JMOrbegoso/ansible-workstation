<h1 align="center">Ansible Workstation</h1>
<h2 align="center">Set up a fully featured Workstation using a single Ansible script 🚀</h2>
<br/>

<img src="https://raw.githubusercontent.com/JMOrbegoso/ansible-workstation/refs/heads/main/docs/assets/virtualbox_debian_12.webp" alt="screenshot"/>

## 🌟 Features

- Idempotency: It can be executed repeatedly without causing unintended changes.
- Customization: It is customized through variables, being flexible and allowing conditional execution.
- Modularity: The entire script is divided into modules (roles).

## 🔘 Available roles

- Alacritty (OpenGL terminal emulator)
- Albert (Desktop agnostic launcher)
- Ansible
- Audacious (Music Player)
- Audacity (Audio editor)
- Azure CLI (Command-line tool for managing Azure resources)
- Blueman (Bluetooth Manager)
- Brave Web Browser
- [checksum-utils 👀](https://github.com/JMOrbegoso/checksum-utils) (CLI tool to manage the checksum of your files)
- DBeaver (Database Manager)
- DevToys (A Swiss Army knife for developers)
- Docker
- Dotnet (.NET support)
- Enpass (Password manager)
- Fastfetch (Neofetch alternative)
- Firewall (UFW)
- FreeTube (YouTube client app)
- Gimp (Image editor)
- Git (Version control system)
- Golang (Go lang support)
- GParted (Disk partition manager)
- Helm (Package manager for Kubernetes)
- Helmfile (Wrapper tool around Helm)
- Hugo (Static web site generator)
- Joplin (Note-taking and organization tool)
- Kubebuilder (Framework for building Kubernetes APIs)
- Kubectl (Kubernetes command-line tool)
- LibreWolf Web Browser (Privacy-focused web browser based on Firefox)
- LightDM (Display manager)
- Minikube (Local Kubernetes for testing)
- MKVToolnix (MKV files editor)
- OBS Studio (Streaming/Recording software)
- Plex (Plex client for desktop)
- Plexamp (Plex audio player)
- Postman (API testing tool)
- Raspberry Pi Imager (Format Raspberry Pi MicroSD cards)
- Rust (Rust lang support & cargo package manager)
- RustDesk (Remote access Software)
- Shell tools:
  - ZSH
  - OhMyZSH
  - Powerlevel10K
- Telegram (Messenger app)
- Terraform (Infrastructure as code)
- Terragrunt (OpenTofu/Terraform orchestration tool)
- Tmux (Terminal multiplexer)
- Trivy (Vulnerabilities and misconfigurations finder in code repositories, container images and IaC)
- Ungoogled Chromium Web Browser (Google Chrome without Google)
- Vagrant (Tool for building and managing virtualized environments)
- Vim (Command line text editor)
- VirtualBox
- VLC Media Player
- Volta (Node.js versions manager)
- VSCodium (VSCode without Microsoft)
- Xfce4 ⚡ (FTW!)
- YACReader (pdf reader)

## 📌 Requirements

### Control node

- It must run a full Linux environment or WSL.
- Ansible (> 2.15.0) installed.
- Should have [connectivity](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html#connecting-to-hosts-behavioral-inventory-parameters) with the managed nodes.

### Managed nodes

- It must run a Debian based environment (Debian, Ubuntu, etc).

## 💻 Installation

1. Clone this repo or [download it](https://github.com/JMOrbegoso/ansible-homeserver/archive/refs/heads/main.zip) in your Ansible Control node:

   ```BASH
   git clone https://github.com/JMOrbegoso/ansible-workstation.git
   cd ansible-workstation
   ```

2. ✏️ Edit the inventory/hosts.yaml file:

   ```BASH
   vim ./inventory/hosts.yaml
   ```

3. ✏️ Edit the playbook file according to your needs (Removing unwanted roles, setting some variables, etc):

   ```BASH
   vim ./workstation.yaml
   ```

4. ✏️ Edit the variable files:

   ```BASH
   vim ./group_vars/all/main.yaml
   vim ./group_vars/workstation/main.yaml
   ```

5. 🔒 Create your ansible vault:

   ```BASH
   ansible-vault create ./group_vars/workstation/secrets.yaml
   ```

6. 🛜 Check connectivity with your managed nodes:

   ```BASH
   ansible workstation -m ping --ask-vault-pass --ask-pass
   ```

7. 🚀 Run the playbook:

   ```BASH
   ansible-playbook workstation.yaml --ask-become-pass --ask-vault-pass --ask-pass
   ```

## ❓ FAQ

### Customize how roles work

#### Values

Some roles can be customized by editing the values ​​of their variables.

To find out which variables are supported, you can check the `main.yaml` file inside the `defaults` folder within each role.

For example: `roles/librewolf/defaults/main.yaml`.

So, considering the [ansible variable precedence](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#understanding-variable-precedence) you should set the new value of the variable in your `group_vars/workstation/main.yaml`.

#### Files

Some roles can copy configuration files, icons, certificates, etc.

To customize which files are copied you can edit them in the `shared_files` folder:

For example: `shared_files/alacritty/alacritty.yaml`.

### Run a role multiple times with different variable values

To execute a role multiple times with different variable values just declare the value of the variables in the playbook instead of the `group_vars/workstation/main.yaml`:

```YAML
- role: 'fastfetch'
  vars:
    fastfetch_role_user_name: 'tux'

- role: 'fastfetch'
  vars:
    fastfetch_role_user_name: 'duke'
```

### Use a desktop environment other than Xfce4

Currently only Xfce4 is supported, but if your managed nodes already have a desktop environment installed: Just remove the xfce4 role from your playbook file.

### Best environment to setup this ansible script

This script has been tested on Debian 12 based desktops and laptops without a desktop environment.

## 👤 Author

**JMOrbegoso**

- Website: [www.jmorbegoso.dev](https://www.jmorbegoso.dev)
- Blog: [blog.jmorbegoso.dev](https://blog.jmorbegoso.dev)
- Github: [@JMOrbegoso](https://github.com/JMOrbegoso)
- LinkedIn: [@jmorbegosodev](https://www.linkedin.com/in/jmorbegosodev)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/JMOrbegoso/ansible-workstation/issues).

## ⭐️ Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2025 [JMOrbegoso](https://github.com/JMOrbegoso).<br />
This project is [MIT](https://github.com/JMOrbegoso/ansible-workstation/blob/main/LICENSE) licensed.
