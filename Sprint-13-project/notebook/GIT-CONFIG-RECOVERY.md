# Git Configuration Recovery

Este diretório contém arquivos para recuperar sua configuração do Git caso ela seja perdida.

## 📋 Arquivos

- **`.gitconfig-backup`** - Backup da sua configuração do Git
- **`restore-git-config.sh`** - Script de automático para restaurar

## 🔧 Como usar

### Opção 1: Restauração automática (recomendado)
```bash
bash restore-git-config.sh
```

### Opção 2: Restauração manual
Se o script não funcionar, copie e execute os comandos manualmente:
```bash
git config --global user.name "Raimir Silva"
git config --global user.email "raimir@proton.me"
git config --global core.safecrlf false
git config --global pull.rebase false
```

## ✅ Verificar configuração

Para confirmar que tudo foi restaurado:
```bash
git config --global --list | grep -E "user|core|pull"
```

Esperado:
```
user.name=Raimir Silva
user.email=raimir@proton.me
core.safecrlf=false
pull.rebase=false
```

## 💡 Dicas

- Execute `restore-git-config.sh` periodicamente para garantir que a configuração está segura
- Guarde este script em um local seguro (pasta sincronizada em nuvem, por exemplo)
- Se perder o arquivo `~/.gitconfig` novamente, este script pode restaurar tudo automaticamente
