#language: pt

@javascript

Funcionalidade: Ver treinos de outros usuários
  Como um usuario
  Eu quero poder ver treinos favoritos de outros
  Para acompanhá-los

Cenário: Ver treino de quem tem favorito
  Dado que cadastro um usuário publico
  Dado que eu tenho um treino cadastrado
  Dado que estou na página de um treino específico
  Quando clico em Favoritar
  Dado que eu não estou mais logado
  Dado que eu estou logado como outro usuario
  Dado que estou na página de um usuario especifico
  Então o favorito dele deve aparecer na lista de favoritos

Cenário: Tentar ver treino de quem não tem favorito
  Dado que cadastro um usuário publico
  Dado que eu não estou mais logado
  Dado que eu estou logado como outro usuario
  Dado que estou na página de um usuario especifico
  Então o favorito dele não deve aparecer na lista de favoritos
