#language: pt

@javascript

Funcionalidade: Favoritar treinos
  Como um usuário
  Eu quero favoritar treinos
  Para que eu possa acessá-los mais facilmente

Cenário: Favoritar treino com sucesso
  Dado que eu estou logado
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino
  E clico em Favoritar
  Então ele deve aparecer na lista de favoritos

Cenário: Desfavoritar treino com sucesso
  Dado que eu estou logado
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino
  E clico em Favoritar
  Então ele deve aparecer na lista de favoritos
  E clico em Desfavoritar
  Então ele não deve aparecer na lista de favoritos

Cenário: Tentar favoritar sem estar logado
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino específico
  Então não deve haver a opção de favoritar
