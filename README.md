# Sistema de Autenticação em Ruby

Este projeto implementa um simples sistema de autenticação em Ruby, onde o usuário pode inserir seu nome e senha para validar o acesso. A senha é mascarada enquanto é digitada, garantindo a privacidade do usuário.

## Funcionalidades

- **Entrada de Nome e Senha:** O usuário insere seu nome e senha, sendo que a senha é ocultada durante a digitação.
- **Autenticação:** O sistema verifica se o nome e a senha correspondem aos armazenados no arquivo `login.txt`.
- **Mensagens de Sucesso ou Falha:** Exibe uma mensagem de "Usuário Autenticado!" se as credenciais estiverem corretas, ou "Usuário e/ou senha inválidos" caso contrário.

## Pré-requisitos

- Ruby instalado na máquina (versão 2.0 ou superior).

## Como Usar

1. **Crie um arquivo `login.txt`** na mesma pasta do script com o seguinte formato:

```
    nome_de_usuario
    senha_secreta
```
   A primeira linha deve conter o nome do usuário e a segunda linha deve conter a senha.

2. **Execute o script:**
```bash
   ruby autenticacao.rb
```
    Insira suas credenciais quando solicitado. A senha será mascarada durante a entrada.

### Exemplo de Uso

```
bash

Nome: usuario123
Senha: ******
Usuário Autenticado!
Bem vindo usuario123
```

### Licença

Este projeto é licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes.
