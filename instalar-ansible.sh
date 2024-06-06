#!/bin/bash

# Atualizar e instalar dependências
echo "Atualizando e instalando dependências..."
sudo apt-get update -y
sudo apt install -y ansible-core python3 python3-pip git vim unzip

# Instalar boto3 e botocore
echo "Instalando boto3 e botocore..."
sudo apt install python3-boto3
sudo apt install python3-botocore

# Instalar AWS CLI
echo "Instalando AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

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
