# Coleção de chave e valor (dicionários)
# inicializando:
hash = {}

# ou...
hash = {nome: "Alice", idade: 23}
puts hash[:nome]
puts hash[:idade]

# Podemos adicionar valor a hash
hash[:sexo] = "fem"
puts hash[:fem]

# Podemos iterar hashs
hash.each do |chave, valor|
    puts "#{chave} -> #{valor}"
end

# Como hash também implementa enumerable, o map também esta disponível. Vamos ver um exemplo invertendoas coisas :D
puts hash.map { |chave, valor| "#{valor}: #{chave}"}

# Se reparar, nossa chaves foram todas definidas com symbols, mas podem ser definidas com qualquer objeto.
# Mas claro, faz sentido usar symbol para não instanciar o mesmo objeto várias vezes
hash[40] = 40
puts hash