#language: pt

Funcionalidade: Criar sessao
Como usuário
Para que eu possa criar minha sessão de login
Eu quero inserir meu email e minha senha na tela de login

Cenário: Criar sessao com sucesso
Dado que eu estou registrado
Dado que eu estou na página de login
Quando eu preencho o campo "Email" com "igor@antun.me"
Quando eu preencho o campo "Password" com "password"
E clico em Login
Então consigo clicar em Sair
