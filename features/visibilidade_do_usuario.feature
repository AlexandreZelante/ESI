#language: pt

Funcionalidade: Visibilidade do Usuario
Como um usuario
Eu quero poder colocar meu perfil como privado
Para nao ser encontrado por outros usuarios na listagem

Cenário: Buscar usuario publico
  Dado que cadastro um usuário publico
  Então vou para a listagem de usuarios
  Então meu usuario deve aparecer na listagem

Cenário: Buscar usuario privado
  Dado que cadastro um usuário privado
  Então vou para a listagem de usuarios
  Então meu usuario não deve aparecer na listagem
