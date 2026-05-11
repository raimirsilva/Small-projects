#!/bin/bash
# Script para restaurar configuração do Git
# Use: bash restore-git-config.sh

echo "🔄 Restaurando configuração do Git..."

# Restaurar configurações globais
git config --global user.name "Raimir Silva"
git config --global user.email "raimir@proton.me"
git config --global core.safecrlf false
git config --global pull.rebase false

echo "✅ Configuração restaurada!"
echo ""
echo "Configuração atual:"
git config --global --list | grep -E "user|core|pull"
