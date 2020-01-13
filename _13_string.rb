# Alguns pontos sobre strings...

# Podemos definir váriaveis string tanto com aspas simples quanto duplas
marca = 'jeep'
modelo = "renegade"

# A diferença é que em aspas simples não podemos fazer interpolação
puts "#{marca} #{modelo}"

# Além disso, podemos ver o enconding de uma string
puts modelo.encoding

# As vezes precisamos que nossa string receba aspas. Bem, para aspas simples basta colocarmos ''.
# Já para aspas duplas, temos que colocar o escapade \
puts "'aspas simples' - \"aspas duplas\""

# Para escrever uma string com várias linhas podemos fazer o seguinte (ele ja insere os \n pra gente):
a = <<EOS
essa
string
tem
várias
linhas
EOS
puts a

# Algumas operações tbm...
puts "Alice".downcase
puts "Alice".upcase
puts "   sem espaços    ".strip
name = "Alice Neves Scholze"
name[" Neves"] = "."
puts name
puts "podemos deixar a primeira letra maiúscula".capitalize
puts "podemos ver as letras da nossa string :thinking".chars
puts "podemos quebrar nossa string".split
puts "podemos quebrar nossa string, mas usando parametros".split(",")