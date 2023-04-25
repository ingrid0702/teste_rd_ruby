# Teste RD - Ruby

Para realizar os testes utilizei o Ruby como linguagem de programação em conjunto com a lib HTTParty (https://github.com/jnunemaker/httparty) que realiza requisições HTTP para as validações.

Para a organização e execução dos cenários de teste utilizei o cucumber (https://cucumber.io/).

## Objetivo

Teste de API para validação do serviço ViaCEP (https://viacep.com.br/) 

![viacep_logo](https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fmeta.cdn.bubble.io%2Ff1633134971072x245531562496913440%2Fviacep.fw.png?w=64&h=64&auto=compress&dpr=1&fit=max)

* Testes realizados
    * Validação de status code
    * Validação de retorno
    * Validação de Schema JSON

## Versões utilizadas

    ruby v3.1
    bundler v2.3.26


## Instalação

Adicionar as Gems de dependencia do projeto com o comando:

    bundler install

Ou instale as gems individualmente com os comandos:

    gem install httparty
    gem install json_matchers
    gem install cucumber

## Executando os testes

Para executar os testes basta executar o comando:

``cucumber``

## Geração de relatório

Para gerar relatório dos testes basta executar o seguinte comando:

    cucumber --format html --out reports.html