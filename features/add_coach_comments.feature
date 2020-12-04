#language: pt

@javascript

Funcionalidade: Criar comentario no perfil de um treinador
Como um usuário
Eu quero criar um comentário no perfil de um treinador

Cenário: Criar comentario no perfil de um treinador com sucesso
  Dado que eu estou logado
  Dado que outro usuário está cadastrado
  Dado que estou na página de um usuário
  Quando eu preencho o campo "Adicionar avaliação" com "Treinador muito competente!"
  E clico no botão Salvar
  Então o comentário "Treinador muito competente!" deve estar na listagem de comentários
