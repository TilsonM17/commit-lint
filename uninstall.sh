#!/bin/bash

# Verifica se o script commit_lint está instalado
if ! command -v commit_lint &> /dev/null; then
  echo -e "\033[31mErro: O script commit_lint não está instalado no sistema.\033[0m"
  exit 1
fi

# Diretório onde o script está instalado
install_dir="/usr/local/bin"

# Remove o script do diretório de instalação
sudo rm "$install_dir/commit_lint"

# Remove a linha adicionada no .bashrc para o $PATH (caso exista)
if grep -q "$install_dir" ~/.bashrc; then
  sed -i "/export PATH=\"$install_dir:\$PATH\"/d" ~/.bashrc
fi

echo "Script commit_lint foi desinstalado com sucesso!"
