Dado("o endereço da API") do
  #Já iniciado na CLASSE
end

Quando("realizar a requisição POST") do
  @resultado = @testelabs.postAPI
end

Então("a API irá retornar os dados e ser validada com Status Code {int}") do |int|
  expect(@resultado.code).to eql (int)
  puts "Status Code: #{@resultado.code}"
  puts "ID         : #{@resultado["id"]}"
  puts "Nome       : #{@resultado["name"]}"
  puts "Ocupação   : #{@resultado["job"]}"
end

Quando("realizar a requisição GET com os dados do Usuário pelo ID") do
  @tratativa = @testelabs.getAPI
  @get = @tratativa["data"]
end

Então("a API irá retornar os dados do usuário e ser validada com Status Code {int}") do |int|
  expect(@tratativa.code).to eq(int)
  puts "Status Code: #{@tratativa.code}"
  puts "ID         : #{@get["id"]}"
  puts "Nome       : #{@get["first_name"]}"
  puts "Sobrenome  : #{@get["last_name"]}"
  puts "Email      : #{@get["email"]}"
end

Quando("realizar a requisição PUT") do
  @put = @testelabs.putAPI
end

Então("a API irá retornar os dados inseridos com Status Code {int}") do |int|
  expect(@put.code).to eql (int)
  puts "Status Code: #{@put.code}"
  puts "Att        : #{@put["updatedAt"]}"
  puts "Nome       : #{@put["name"]}"
  puts "Ocupação   : #{@put["job"]}"
end

Quando("realizar a requisição DELETE") do
  @delete = @testelabs.deleteAPI
end

Então("a API irá retornar os dados excluídos com Status Code {int}") do |int|
  expect(@delete.code).to eq(int)
  puts "Status Code: #{@delete.code}"
  puts "ID         : #{@delete["id"]}"
  puts "Nome       : #{@delete["name"]}"
  puts "Ocupação   : #{@delete["job"]}"
end

Quando("realizar a requisição PATCH") do
  @patch = @testelabs.patchAPI
  puts @patch
end

Então("a API irá retornar os dados atualizados com Status Code {int}") do |int|
  puts "Status Code: #{@patch.code}"
  puts "Att        : #{@patch["updatedAt"]}"
  puts "Nome       : #{@patch["name"]}"
  puts "Ocupação   : #{@patch["job"]}"
end
