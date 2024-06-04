# Atualizar e instalar dependências
Write-Host "Atualizando e instalando dependências..."
winget install -e --id Python.Python.3
pip install --upgrade pip
pip install ansible-core boto3 botocore awscli

# Instalar Git
Write-Host "Instalando Git..."
winget install -e --id Git.Git

# Clonar repositório do GitHub
Write-Host "Clonando repositório do GitHub..."
git clone https://github.com/giovanni-gava/iac-mack.git

# Configurar credenciais da AWS
Write-Host "Configurando credenciais da AWS..."
$awsDir = "$HOME\.aws"
if (-Not (Test-Path -Path $awsDir)) {
    New-Item -ItemType Directory -Path $awsDir
}
$credentialsFile = "$awsDir\credentials"
$accessKey = Read-Host -Prompt "Digite sua AWS Access Key ID"
$secretKey = Read-Host -Prompt "Digite sua AWS Secret Access Key" -AsSecureString
$region = Read-Host -Prompt "Digite a região AWS (ex: us-east-1)"

$secretKeyValue = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secretKey))

@"
[default]
AWS_ACCESS_KEY_ID=$accessKey
AWS_SECRET_ACCESS_KEY=$secretKeyValue
AWS_DEFAULT_REGION=$region
"@ | Out-File -FilePath $credentialsFile -Force -Encoding ASCII

Write-Host "Configuração concluída com sucesso!"
