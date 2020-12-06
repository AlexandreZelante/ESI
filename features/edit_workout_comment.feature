#language: pt

Funcionalidade: Editar comentario de um treino
Como um usuário
Eu quero editar um comentário de um treino criado por mim

Cenário: Editar comentario de um treino com sucesso 
  Dado que eu estou logado
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino
  Dado que eu tenho um comentário de treino cadastrado
  Dado que eu clico no botão Editar
  Quando eu preencho o campo "Adicionar comentário" com "Esse comentário foi editado!"
  E clico no botão Salvar
  Então o comentário "Esse comentário foi editado!" deve estar na listagem de comentários
