#!/bin/bash

# Habilita saída de erro
set -e

echo "Configurando chaves SSH..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Criar chave privada a partir da variável do CircleCI
echo "$PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

# Adicionar a chave do servidor ao known_hosts
echo "$SERVER_KEY" > ~/.ssh/known_hosts

echo "Fazendo deploy no servidor..."
ssh -i ~/.ssh/id_rsa user@server "cd /caminho/do/projeto && git pull ori

