#language: pt

Funcionalidade: Buscar usuarios
Como um usuario
Eu quero buscar usuarios
Para achar um usuario em especifico

Cenário: Buscar usuario com sucesso
  Dado que tenho um usuario cadastrado com o nome "Usuario a ser buscado"
  Dado que estou na página de busca de usuarios
  Quando preencho o campo de busca com "Usuario a ser buscado"
  E clico no botão "search-button"
  Então o usuario "Usuario a ser buscado" deve estar na listagem
