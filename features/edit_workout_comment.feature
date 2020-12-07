#language: pt

Funcionalidade: Editar comentario de um treino
Como um usuário
Eu quero editar um comentário de um treino

Cenário: Editar comentario de um treino com sucesso 
  Dado que eu estou logado
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino
  Dado que eu tenho um comentário de treino cadastrado
  #Quando eu preencho o campo "Adicionar comentário" com "Treino ótimo para hipertrofia, realmente estou muito bombado!"
  #E clico no botão Salvar
  #Então o comentário "Treino ótimo para hipertrofia, realmente estou muito bombado!" deve estar na listagem de comentários
