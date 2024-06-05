#!/bin/bash

# Atualizar e instalar dependências
echo "Atualizando e instalando dependências..."
sudo dnf update -y
sudo dnf install -y ansible-core python3 python3-pip git vim

# Instalar boto3 e botocore
echo "Instalando boto3 e botocore..."
pip3 install boto3 botocore

# Instalar AWS CLI
echo "Instalando AWS CLI..."
pip3 install awscli

# Instalar coleções Ansible Galaxy
echo "Instalando coleções Ansible Galaxy..."
ansible-galaxy collection install amazon.aws
ansible-galaxy collection install community.aws

# Clonar repositório do GitHub
echo "Clonando repositório do GitHub..."
git clone https://github.com/giovanni-gava/iac-mack.git ~/iac-mack

# Configurar credenciais da AWS
echo "Configurando credenciais da AWS..."
mkdir -p ~/.aws
cat <<EOF > ~/.aws/credentials
[default]
AWS_ACCESS_KEY_ID=$(read -p "Digite sua AWS Access Key ID: " access_key && echo $access_key)
AWS_SECRET_ACCESS_KEY=$(read -sp "Digite sua AWS Secret Access Key: " secret_key && echo $secret_key)
AWS_DEFAULT_REGION=$(read -p "Digite a região AWS (ex: us-east-1): " region && echo $region)
EOF

echo "Configuração concluída com sucesso!"
