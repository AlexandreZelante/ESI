#language: pt

Funcionalidade: Buscar usuarios
Como um usuario
Eu quero buscar usuarios
Para achar um usuarios em especifico

Cenário: Buscar usuario com sucesso
  Dado que tenho um usuario cadastrado com o nome "Usuario a ser buscado"
  Dado que estou na página de listagem de usuario
  Quando preencho o campo de busca de usuario com "Usuario a ser buscado"
  E clico no botão de busca de usuario "search-button-user"
  Então o usuario "Usuario a ser buscado" deve estar na listagem
