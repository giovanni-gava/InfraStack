![ansible-003-1024x819](https://github.com/user-attachments/assets/a4d5a7ae-4175-4d68-b941-c948637b935a)


# 🚀 InfraStack: Infrastructure as Code Automation with Ansible & Terraform

InfraStack is a comprehensive Infrastructure as Code (IaC) project developed as part of the Mackenzie MBA program. It leverages Ansible and Terraform to automate the provisioning and configuration of cloud infrastructure components, ensuring consistency, scalability, and efficiency.

---

## 📌 Project Overview

This project demonstrates the automation of various AWS services using Ansible playbooks and Terraform configurations. It serves as a practical example of implementing IaC principles in real-world scenarios.

---

## 🧰 Tools & Technologies

- **Ansible**: Automates configuration management and application deployment.
- **Terraform**: Manages infrastructure provisioning using declarative configurations.
- **AWS**: Cloud service provider hosting the infrastructure components.

---

## 📁 Project Structure

```bash
iac-mack/
├── ansible/
│   ├── playbooks/
│   │   ├── alb.yml
│   │   ├── rds.yml
│   │   ├── route53.yml
│   │   ├── vpc.yml
│   │   ├── subnet.yml
│   │   └── webserver.yml
│   └── inventory/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── .gitignore
└── README.md
```

---

## ⚙️ Usage

### Prerequisites

- Install [Ansible](https://www.ansible.com/)
- Install [Terraform](https://www.terraform.io/)
- Configure AWS credentials with appropriate permissions

### Steps

1. **Clone the Repository**

```bash
git clone https://github.com/giovanni-gava/iac-mack.git
cd iac-mack
```

2. **Provision Infrastructure with Terraform**

```bash
cd terraform
terraform init
terraform apply
```

3. **Configure Services with Ansible**

```bash
cd ../ansible
ansible-playbook -i inventory playbooks/vpc.yml
ansible-playbook -i inventory playbooks/subnet.yml
ansible-playbook -i inventory playbooks/alb.yml
ansible-playbook -i inventory playbooks/rds.yml
ansible-playbook -i inventory playbooks/route53.yml
ansible-playbook -i inventory playbooks/webserver.yml
```

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to fork, contribute, or adapt this project to fit your learning goals or production use cases!

