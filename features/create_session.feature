#language: pt

Funcionalidade: Criar sessao
Como usuário
Para que eu possa criar minha sessão de login
Eu quero inserir meu email e minha senha na tela de login

Cenário: Criar sessao com sucesso
Dado que eu estou na página de login
Quando eu preencho o campo "Email" com "alexandre.zelante@hotmail.com"
Quando eu preencho o campo "Password" com "123456"
E clico em Login
Então ele deve ter criado uma sessão e cadastrado no banco de dados
E deverei ver uma tela de confirmação de login com meu nome

