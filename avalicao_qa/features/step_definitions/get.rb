Quando('realizar uma requisição passando o Nome da Pessoa') do
    $response = @pessoa.get("Lucas%20Capucho%20de%20Araujo")
end

E('realizar uma requisição passando o Nome da Pessoa para validar a criação') do
    $response = @pessoa.get("Lucas%20Capucho%20de%20Araujo")
    log "Resultado dos testes - #{$response["data"]}"
end

Quando('realizar uma requisição sem passar o Nome da Pessoa') do
    $response = @pessoa.get
end

Então('a API irá retornar os dados da Pessoa correspondente respondendo o código {int}') do |int|
    log "Método Put – Status Code #{$response.code}"
    log "Mensagem da Requisição - #{$response.message}"
    log "Resultado dos testes - #{$response["data"]}"
end
