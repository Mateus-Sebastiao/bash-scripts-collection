#!/bin/bash

set -e # Faz o script falhar se algum comando falhar

# Diretório temporário para o teste
TEST_DIR="/tmp/test_limpar"
mkdir -p "$TEST_DIR"

# Criar arquivos fictícios
touch "$TEST_DIR/ficheiro_recente.log" # Arquivo recente
touch -d "10 days ago" "$TEST_DIR/ficheiro_velho.log" # Arquivo antigo

# Executar o script de limpeza
../scripts/limpar-tmp.sh "$TEST_DIR" 7 # Remove arquivos com mais de 7 dias

# Verificar se o arquivo foi removido e o recente permaneceu
if [ ! -f "$TEST_DIR/ficheiro_velho.log" ] && [ -f "$TEST_DIR/ficheiro_recente.log" ] ; then
	echo "Teste passou!"
	exit 0
else
	echo "Teste falhou!"
	exit 1
fi

