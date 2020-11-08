# Fábrica de Monstro
[![Maintainability](https://api.codeclimate.com/v1/badges/40d294a4759c7df57ae0/maintainability)](https://codeclimate.com/github/AlexandreZelante/ESI/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/40d294a4759c7df57ae0/test_coverage)](https://codeclimate.com/github/AlexandreZelante/ESI/test_coverage)
[![Build Status](https://travis-ci.org/AlexandreZelante/ESI.svg?branch=master)](https://travis-ci.org/AlexandreZelante/ESI)

- Link Heroku: https://esi-2020.herokuapp.com
- Link Pivotal Tracker: https://www.pivotaltracker.com/n/projects/2466056

# Descrição
O projeto busca auxiliar os usuários na prática de atividade físicas usando métodos gameficados, buscando melhorar o engajamento e motivação dos mesmos. Essa aplicação foca no controle de registro das atividades físicas, com treinos sendo disponibilizados pelos instrutores, e os usuários recebendo pontos por atingir objetivos relacionados as atividades no guia de treino.

# Comandos
## Para rodar o projeto pela primeira vez
```sh
make prepare_db && make up
```
## Todos os comandos
Sobe o projeto
```sh
make up
```
Prepara o banco de dados (cria tabelas e roda migrations)
```sh
make prepare_db
```
Cria somente as tabelas do banco de dados
```sh
make create_tables
```
Roda as migrations do banco de dados
```sh
make migrate
```
Rodar testes do Cucumber
```sh
make cucumber
```
Rodar testes do RSpec
```sh
make rspec
```

# Integrantes
* Alexandre Zelante Comuni (AlexandreZelante) - 10723795
* Guilherme Oliveira Goularte (GuilhermeOliGou) - 10387748
* Igor Antun da Costa Gago (igorantun) - 10687509
* Matheus Morandino di Giovanni Carneiro (matheusMorandino) - 10724347
* Pedro Paulo de Sillos (PedroSillos) - 10816774
* Vinicius Hessel Pereira (hezsel) - 10783006
