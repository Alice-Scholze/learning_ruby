# Neste arquivo estão várias considerações iniciais do meu aprendizado de Ruby 
# (inclusive seguindo a minha sequencia de aprendizado)

# Em ruby tudo é considerado um objeto, veja:

puts "String.superclass: #{String.superclass}"

# Para a definição de variaveis e funções é utilizado o padrão snake case, como exemplificado abaixo:

nome_completo = "Alice Neves Scholze"

puts "Nome completo: #{nome_completo}"

# Para definir uma variavel como 'null' bastar seta-la para 'nil'

nome_completo = nil

puts "Nome completo: #{nome_completo}"

# Pode ser verificado se a variavel é nil utilizando .nil?, como abaixo:

puts "A variavel é nil? #{nome_completo.nil?}"

# Podemos remover os espaços contidos no início e fim de uma string com o método strip

texto = " meu texto "

puts "texto: #{texto}"

puts "texto.strip: #{texto.strip}"

# Entretanto se olharmos a variavel novamente, os espaços continuam mantidos.

puts "texto: #{texto}"

# Para que essa alteração seja realmente aplicada a variavel, basta inserir um '!' logo após o método

texto.strip!

puts "texto.strip!: #{texto}"

# Vamos criar funções?

preco = 50

def set_preco
    preco = 100
    puts "Preço alterado: #{preco}"
end

set_preco
puts "Preço: #{preco}"

# Note que ao definir 'preco' = 100, o valor inicial (50) não foi alterado.
# Isso ocorre pq o escopo da variavel esta limitado a função, ou seja, 
# a variavel 'preco' dentro da função não é a mesma de fora da função."

# --Operadores--"
# Comparação: > >= < <= == !="
# Lógicos: ! && || not and or"
# Matemáticos: + - * / %(mod) **(potenciação)"
# Controladores de fluxo: if else do while"

# Para realizar comparações é possível seguir a forma padrão:
if 1 > 2
    puts "1 maior que 2"
else
    puts "2 maior que 1"
end

# ou... 

puts "2 maior que 1" if 2 > 1

# E o input e output? 'gets' e 'puts' :D

puts "Digite seu nome: "
nome = gets

puts nome

# valor ou referencia ;)

a = "RUBY"
b = a

b.downcase!
puts a
 
# Como b referencia o endereço de memória de a, setamos a como minúsculo
# Se quisermos clonar o valor de uma varivel, devemos usar o métoco clone

c = a.clone
c.upcase!

puts c
puts a


# Algo interessante, ruby não tem tipos boleanos. Mas entao como podemos setar true e false?
a = true

# True e false são na verdade objetos:
puts "True class: #{true.class} - False class: #{false.class}"

# true e false são singletons, ou seja, há apenas uma instanca de true e false em toda aplicação