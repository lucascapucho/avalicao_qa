Before '@pessoa' do

    @headers = {
        "Content-Type": "application/json"
    }

    @body = {
        "email": "lucascapucho@hotmail.com",
        "cpf": 42681196809,
        "dataNascimento": "21/06/1996",
        "telefone": "15981672737"
    }

    @pessoa = Pessoa.new(@headers, @body)
end