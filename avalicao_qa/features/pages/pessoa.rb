class Pessoa

    include HTTParty
    Dir[File.expand_path('../hooks/*.rb', __dir__)].each { |file| require file }
    $BASE_URL = "https://learningprime.com.br/api"
    base_uri $BASE_URL.to_s

    def initialize(header, body)
        @header = { :header => header }
        @options = { :body => body }
        @options2 = {}
    end

    def get(nome = nil)
        nome.nil? ? self.class.get("/nome/", @header) : self.class.get("/nome/#{nome}", @header)
    end

    def post(nome = nil)
        @options[:body][:nome] = nome unless nome.nil?
        option = @header.merge(@options)
        option[:body] = option[:body].to_json
        self.class.post("/pessoa", option)
    end

    def put(_nome = nil, celular)
        body = {
            "telefone": "#{celular}"
        }
        @options2 = { :body => body }
        option = @header.merge(@options2)
        option[:body] = option[:body].to_json
        _nome.nil? ? self.class.put("/nome/", option) : self.class.put("/nome/#{_nome}", option)
    end

    def delete(nome = nil)
        nome.nil? ? self.class.delete("/nome/", @header) : self.class.delete("/nome/#{nome}", @header)
    end      
end
