#language: pt

Funcionalidade: Criar comentario de um treino
Como um usuário
Eu quero criar um comentário de um treino

Cenário: Criar comentario de um treino com sucesso 
  Dado que eu estou logado
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino
  Quando eu preencho o campo "Adicionar comentário" com "Treino ótimo para hipertrofia, realmente estou muito bombado!"
  E clico no botão Salvar
  Então o comentário "Treino ótimo para hipertrofia, realmente estou muito bombado!" deve estar na listagem de comentários
