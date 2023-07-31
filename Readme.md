# Commit Lint

O Commit Lint é uma ferramenta que atua como um wrapper para o comando `git commit`, adicionando a verificação da mensagem de commit seguindo o padrão [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) . Ele também adiciona um alias conveniente para o comando `git commit` com a verificação de lint, permitindo uma experiência de commit mais segura e padronizada.

## Instalação

Para instalar o Commit Lint em seu sistema, siga os seguintes passos:

1. Faça o download deste projeto, acesse esse diretório.

2. Execute o Script de instalação.

```sh
chmod +x ./install.sh 
sh ./install.sh
```

O script irá verificar se o Git está instalado em sua máquina e, em seguida, instalará o Commit Lint no diretório `/usr/local/bin` e adicionará o alias `gclint` para facilitar o uso do lint ao realizar commits.

## Por que é prático?

O Commit Lint torna o processo de commit mais seguro e padronizado. Ao verificar automaticamente se a mensagem de commit segue o padrão Conventional Commits, ele ajuda a garantir que as mensagens de commit estejam bem estruturadas e fáceis de entender, o que é essencial para equipes de desenvolvimento colaborativas.

Além disso, o alias `gclint` adicionado pelo Commit Lint permite fazer commits com a verificação do lint em apenas um comando, economizando tempo e esforço durante o processo de desenvolvimento.

## Como usar

Pode executar:

```sh
git commit -m "sua mensagem de commit" | commit_lint 
```

Mas se desejar, você pode usar o alias `gclint` para realizar commits com a verificação do lint. Basta digitar o seguinte comando no terminal:

```sh
gclint "sua mensagem de commit" 
```

Substitua `"sua mensagem de commit"` pela mensagem que você deseja utilizar no commit. O Commit Lint verificará se a mensagem segue o padrão Conventional Commits e, se estiver correta, realizará o commit. Caso contrário, ele mostrará uma mensagem de erro indicando o que pode ser melhorado na mensagem.

## Plus: Alias

O alias `gclint` adicionado pelo Commit Lint é um recurso poderoso e conveniente para agilizar o processo de commit. Com ele, você não precisa mais digitar o comando completo `git commit -m` seguido da mensagem de commit. O alias reduz o comando a apenas `gclint`, tornando o processo mais simples e intuitivo.

Além disso, o alias é compatível tanto com o Bash quanto com o Zsh, o que significa que você pode usá-lo em diferentes shells sem nenhum problema.

Com o Commit Lint e o alias `gclint`, você pode fazer commits mais facilmente, garantindo que suas mensagens de commit estejam sempre de acordo com as melhores práticas e padrões da comunidade de desenvolvimento.

## Desinstalação

Se você deseja desinstalar o Commit Lint de seu sistema, siga os passos abaixo:

1. Abra um terminal na pasta onde o arquivo `uninstall.sh` está localizado.

3. Dê permissão de execução ao script com o seguinte comando:

```sh
~ chmod +x uninstall.sh 
~ ./unistall.sh
```
