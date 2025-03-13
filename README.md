## Sobre o Projeto  
Este repositório contém uma série de **scripts Bash** criados para facilitar tarefas administrativas no Linux. Cada script é projetado para resolver problemas específicos, melhorar a produtividade e automatizar processos comuns.  

**Primeiro projeto:** Script para limpar arquivos temporários antigos!  

## Scripts Disponíveis
### 1. limpar-tmp.sh – Limpeza de Arquivos Temporários  
**Descrição:** Remove arquivos temporários mais antigos que um número específico de dias.  
**Uso:**  
```
./scripts/limpar-tmp.sh /tmp 7
```
> Remove arquivos mais antigos que **7 dias** no diretório especificado.

---

## Instalação e Uso
### Requisitos
- Linux / Unix  
- Bash 4+  
- Permissão para executar scripts  

### Clonar o Repositório
```
git clone https://github.com/Mateus-Sebastiao/bash-scripts-collection.git
cd bash-scripts-collection
```

### Executar um Script
Dê permissão ao script e execute:  
```
chmod +x scripts/limpar-tmp.sh
./scripts/limpar-tmp.sh /tmp 7
```

## Testes Automatizados  
Actualmente os testes devem ser feitos manualmente. Mas automatizarei daqui há algum tempo. Para rodar os testes manualmente:  
```
./tests/test-limpar-tmp.sh
```
Se passar, verá: **"Teste passou!"**

## Licença  
Este projeto está sob a licença **MIT**. Você pode usá-lo e modificá-lo livremente.  

**Dúvidas ou sugestões?** Abra uma **issue** ou contribua!  
