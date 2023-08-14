Quando('realizar uma requisição para cadastrar uma Pessoa') do
    $response = @pessoa.post("Lucas Capucho de Araujo")
end


Quando('realizar uma requisição para cadastrar uma Pessoa sem passar o Nome') do
    $response = @pessoa.post
end

Então('a API irá retornar os dados do cadastro da Pessoa respondendo o código {int}') do |int|
    log "Método Put – Status Code #{$response.code}"
    log "Mensagem da Requisição - #{$response.message}"
    log "Resultado dos testes - #{$response["data"]}"
end
