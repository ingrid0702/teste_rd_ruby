#language: pt
Funcionalidade: Consulta dados via API

Cenario: Consulta de CEP

    Dado que eu possua o cep 05339-000
    Quando pesquiso na API do via CEP
    Então eu recebo o endereço 'Avenida Corifeu de Azevedo Marques'
    E recebo status 200