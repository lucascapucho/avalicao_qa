Quando('realizar uma requisição para alterar uma Pessoa') do
    $response = @pessoa.put("Lucas%20Capucho%20de%20Araujo", "(15)981672737")
end

Quando('realizar uma requisição para alterar uma Pessoa sem passar o Nome') do
    $response = @pessoa.put("(15)981672737")
end

Então('a API irá retornar os dados da Pessoa alterados respondendo o código {int}') do |int|
    log "Método Put – Status Code #{$response.code}"
    log "Mensagem da Requisição - #{$response.message}"
    log "Resultado dos testes - #{$response["data"]}"
end
