#language: pt

Funcionalidade: Editar comentario de um treino
Como um usuário
Eu quero editar um comentário de um treino

Cenário: Editar comentario de um treino com sucesso
  Dado que eu estou logado
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino
  Quando eu preencho o campo "Adicionar comentário" com "Treino bacana"
  E clico no botão Salvar
  Dado que estou na página de um treino
  Então o comentário "Treino bacana" deve estar na listagem de comentários
  Quando clico no link de Editar
  E eu preencho o campo "Editar comentário" com "Treino supimpa"
  #Então o comentário "Treino supimpa" deve estar na listagem de comentários
