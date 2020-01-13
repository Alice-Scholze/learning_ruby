# Require relative para carregar arquivos referentes ao projeto
require_relative '../lib/fabrica/carro'
# Require para carregar gems
require 'json'
require 'net/http'
# gem são bibliotecas de terceiros
# Para instalar uma gem no gemset bastar digitar gem install seguido do nome da gem
# gem install json
# para ajudar com o gerenciamento de gems, podemos usar o bundler: gem install bundler
# após instalar o bundler, ao executar o comando bundle init, será criado um arquivo Gemfile

novo_carro = Fabrica::Carro.new('Tesla', 'Modelo X')

novo_carro.acelera

uri = URI('https://jsonplaceholder.typicode.com/users')
response = Net::HTTP.get(uri)
usuarios = JSON.parse(response)
usuarios.each do |usuario|
    if usuario["name"].start_with?("Clementine")
        novo_carro.dono = usuario["name"]
        break
    end
end

puts "#{novo_carro.dono} é o dono do #{novo_carro.modelo}"

puts 'Finalizando programa...'