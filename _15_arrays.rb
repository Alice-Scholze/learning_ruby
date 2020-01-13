# Temos algumas formas de trabalhar com arrays:

# Instanciar
lista = []
puts lista
 # ou...
lista = Array.new
puts lista
# ou...
lista = [1,2,3,4]
puts lista
# ou...
lista = [1, "2", 1.5]
puts lista

# Podemos converter uma string para um array:
lista = %w(conversão de string para array)
puts lista

# Podemos ver o tamanho do array
puts lista.size

# Ou ver se esta vazio
puts lista.empty?

# Para acessar os indices do array basta passar dentro do colchete.
# O interessante é que podemos acessar iniciando do fim para o início utilizando o - antes de indice:
puts "Primeiro indice: #{lista[0]}"
puts "Último indice: #{lista[-1]}"
puts "Penultimo indice: #{lista[-2]}"

# Para adicionar elementos ao final do array
lista.push "10"
puts lista

# Se quisermos concatenar nosso array em uma string (entre '' informar qual caracter deseja utilizar):
puts lista.join ' '
puts lista.join ','

# Algumas coisas do Enumerable
# Podemos ordenar o array
puts lista.sort

# Podemos reduzir nosso array a um único valor. Nesse exemplo somamos os valore do nosso array
lista = [1, 2, 3, 4, 5, 2]
puts lista.reduce(0) { |resultado, proximo_valor| resultado + proximo_valor}

# Podemos mapear nosso array para um novo array
puts lista.map { |numero| numero * numero}