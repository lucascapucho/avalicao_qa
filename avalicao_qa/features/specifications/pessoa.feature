#language: pt

@pessoa
Funcionalidade: Manipular os dados de uma Pessoa através da API
    Com alguns dados
    Eu quero realizar diferentes requisições na API
    A fim de manipular as informações de cadastro de uma Pessoa

@post @positivo @200
Cenário: Cadastrar uma Pessoa
    Dado o endereço correto da API
    Quando realizar uma requisição para cadastrar uma Pessoa
    Então a API irá retornar os dados do cadastro da Pessoa respondendo o código 200
    E realizar uma requisição passando o Nome da Pessoa para validar a criação

@post @erro @400
Cenário: Cadastrar uma Pessoa sem passar o Nome
    Dado o endereço correto da API
    Quando realizar uma requisição para cadastrar uma Pessoa sem passar o Nome
    Então a API irá retornar os dados do cadastro da Pessoa respondendo o código 400

@get @positivo @200
Cenário: Consultar uma Pessoa
    Dado o endereço correto da API
    Quando realizar uma requisição passando o Nome da Pessoa
    Então a API irá retornar os dados da Pessoa correspondente respondendo o código 200

@get @erro @404
Cenário: Consultar uma Pessoa sem passar o Nome
    Dado o endereço correto da API
    Quando realizar uma requisição sem passar o Nome da Pessoa
    Então a API irá retornar os dados da Pessoa correspondente respondendo o código 404

@put @positivo @200
Cenário: Alterar informações de uma Pessoa
    Dado o endereço correto da API
    Quando realizar uma requisição para alterar uma Pessoa
    Então a API irá retornar os dados da Pessoa alterados respondendo o código 200

@put @erro @404
Cenário: Alterar informações de uma Pessoa não cadastrada
    Dado o endereço correto da API
    Quando realizar uma requisição para alterar uma Pessoa sem passar o Nome
    Então a API irá retornar os dados da Pessoa alterados respondendo o código 404

@delete @positivo @204
Cenário: Deletar uma Pessoa
    Dado o endereço correto da API
    Quando realizar uma requisição para excluir uma Pessoa
    Então a API deverá retornar os dados da exclusão respondendo o código 204

@delete @erro @404
Cenário: Deletar uma Pessoa sem passar o Nome
    Dado o endereço correto da API
    Quando realizar uma requisição para excluir uma Pessoa sem passar o Nome
    Então a API deverá retornar os dados da exclusão respondendo o código 404
