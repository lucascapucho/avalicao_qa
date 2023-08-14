Quando('realizar uma requisição para excluir uma Pessoa') do
    $response = @pessoa.delete("Lucas%20Capucho%20de%20Araujo")
end

Quando('realizar uma requisição para excluir uma Pessoa sem passar o Nome') do
    $response = @pessoa.delete
end

Então('a API deverá retornar os dados da exclusão respondendo o código {int}') do |int|
    log "Método Delete – Status Code #{$response.code}"
    log "Mensagem da Requisição - #{$response.message}"
    log "Resultado dos testes - #{$response["data"]}"
end
