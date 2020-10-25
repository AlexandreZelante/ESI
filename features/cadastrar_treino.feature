#language: pt

Funcionalidade: Cadastrar treinos
Como um treinador
Eu quero cadastrar treinos
Para que meus alunos possam treinar independentemente

Cenário: Cadastro de treino simples com sucesso
Dado que estou na página de cadastro de treino
Quando preencho o campo "Nome do treino" com "Maromba"
E preencho o campo "Descrição do treino" com "Treino perfeito para quem quer ficar gigante"
E preencho o campo "Nome do treinador" com "Igor"
E preencho o campo "Nome do dia" com "Braço"
E preencho o campo "Nome do exercício" com "Supino"
E preencho o campo "Número de séries" com "3"
E preencho o campo "Número de repetições" com "15"
E preencho o campo "Tempo de descanso" com "30s"
E clico em salvar
Então ele deve ter sido salvo no banco de dados
