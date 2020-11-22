#language: pt

@javascript

Funcionalidade: Seguir usuário
  Como um usuário
  Eu quero seguir usuários
  Para visualizar seus treinos favoritos

Cenário: Seguir um usuário com sucesso por seu perfil
  Dado que eu estou logado
  Dado que outro usuário está cadastrado
  Dado que estou na página de outro usuário
  Então deve aparecer o botão de seguir
  E não deve aparecer o botão de deixar de seguir
  Então clico em seguir
  E deve ser exibida uma mensagem de sucesso ao seguir
  E deve aparecer o botão de deixar de seguir
  E não deve aparecer o botão de seguir

Cenário: Deixar de seguir um usuário com sucesso por seu perfil
  Dado que eu estou logado
  Dado que outro usuário está cadastrado
  Dado que estou na página de outro usuário
  Então clico em seguir
  E deve ser exibida uma mensagem de sucesso ao seguir
  E não deve aparecer o botão de seguir
  E deve aparecer o botão de deixar de seguir
  E clico em deixar de seguir
  Então deve ser exibida uma mensagem de sucesso ao deixar de seguir
  E deve aparecer o botão de seguir
  E não deve aparecer o botão de deixar de seguir

Cenário: Tentar deixar seguir sem estar logado
  Dado que outro usuário está cadastrado
  Dado que outro usuário está cadastrado
  Dado que estou na página de outro usuário
  Então não deve aparecer o botão de seguir
  E não deve aparecer o botão de deixar de seguir
