#language: pt

Funcionalidade: Buscar treinos
Como um usuario
Eu quero buscar treinos
Para achar um treino em especifico

Cenário: Buscar treino com sucesso
  Dado que tenho um treino cadastrado com o nome "Treino a ser buscado"
  Dado que estou na página de listagem de treinos
  Quando preencho o campo de busca com "Treino a ser buscado"
  E clico no botão "search-button"
  Então o treino "Treino a ser buscado" deve estar na listagem

Cenário: Buscar treino que não existe
  Dado que tenho um treino cadastrado com o nome "Treino a ser buscado"
  Dado que estou na página de listagem de treinos
  Quando preencho o campo de busca com "Treino errado"
  E clico no botão "search-button"
  Então não deve haver treinos na listagem
