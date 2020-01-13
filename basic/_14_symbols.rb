# Symbols são strings globais a sua aplicação
# O symbol é um objeto que é criado uma única vez pelo ruby
# O symbom inicia com :
:alice_scholze
:"alice scholze"

# Podíamos toda vez que quisermos, printar o nome:
puts "alice_scholze"
puts "alice_scholze"
puts "alice_scholze"

# Mas nessa execução, foram instanciados três objetos.
# Se usarmos symbols, continuamos a usar o mesmo objeto ja instanciado
puts :alice_scholze
puts :alice_scholze

# Podemos também converter string para symbol 
puts "nome".to_sym.class

# O contrário também é válido. Podemos converter um symbol para string
puts :alice_scholze.to_s.class