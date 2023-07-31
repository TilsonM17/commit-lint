# Início da instalação do script
echo "Instalando o script commit_lint...🤡"

# Diretório onde o script será instalado
install_dir="/usr/local/bin"

# Move o script para o diretório de instalação
sudo cp commit_lint "$install_dir"

# Dá permissão de execução ao script
sudo chmod +x "$install_dir/commit_lint"

## =============================================================================
##     Verifica o PATH
## Verifica se /usr/local/bin está incluído no $PATH (Bash)
if ! echo "$PATH" | grep -q "$install_dir"; then
  # Adiciona o diretório ao $PATH (Bash)
  echo "export PATH=\"$install_dir:\$PATH\"" >> ~/.bashrc
fi

# Verifica se /usr/local/bin está incluído no $PATH (Zsh)
if ! echo "$PATH" | grep -q "$install_dir"; then
  # Adiciona o diretório ao $PATH (Zsh)
  echo "export PATH=\"$install_dir:\$PATH\"" >> ~/.zshrc
fi
## ====================================================================================

## ====================================================================================
# Adiciona o alias 'gclint' (Bash)
if ! grep -q "alias gclint" ~/.bashrc; then
  echo "alias gclint='git commit -m \"\$1\" | commit_lint'" >> ~/.bashrc
fi

# Adiciona o alias 'gclint' (Zsh)
if ! grep -q "alias gclint" ~/.zshrc; then
  echo "alias gclint='git commit -m \"\$1\" | commit_lint'" >> ~/.zshrc
fi
## ====================================================================================

# Atualiza as configurações do shell atual (Bash ou Zsh)
if [ -n "$BASH_VERSION" ]; then
  source ~/.bashrc
elif [ -n "$ZSH_VERSION" ]; then
  source ~/.zshrc
fi

echo "Script commit_lint foi instalado com sucesso!"
 echo -e "\033[32mAgora você pode usar 'gclint \"sua mensagem de commit\"'.\033[0m"