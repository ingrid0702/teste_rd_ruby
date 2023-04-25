Dado ("que eu possua o cep 05339-000") do
    $base_uri = "https://viacep.com.br/ws/05339000/json/"
end

Quando ("pesquiso na API do via CEP") do 
    $response = HTTParty.get($base_uri)
end

Então ("eu recebo o endereço 'Avenida Corifeu de Azevedo Marques'") do
    JSON::Validator.validate('features/support/schema/CEP_query.json', $response.body)
    $endereco = JSON.parse($response.body)
    expect($endereco["logradouro"]).to eq("Avenida Corifeu de Azevedo Marques")
end

Então ("recebo status 200") do
    expect($response.code).to eq(200)
end
