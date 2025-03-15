#!/bin/bash

#Autor: Mateus Sebastião
#Objectivo: Eliminar ficheiros antigos/temporários do sistema para reduzir o espaço ocupado por eles.

# Diretório onde os arquivos temporários estão localizados
DIRETORIO="$1"

# Definição dos tipos de arquivos a serem removidos (pode adicionar mais)
EXTENSOES=("*.log" "*.tmp")

# Tempo de retenção (em dias). Arquivos mais antigos que isso serão apagados.
RETENCAO=$2

echo "Iniciando a limpeza de arquivos temporários em $DIRETORIO..."

# Loop para remover cada tipo de extensão definida acima
for EXT in "${EXTENSOES[@]}" ; do
	echo "Removendo arquivos do tipo: $EXT com mais de $RETENCAO dias..."
	find "$DIRETORIO" -type f -name "$EXT" -mtime +$RETENCAO -exec rm -f {} \;
done

echo "Limpeza concluída!"

