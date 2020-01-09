puts "Em ruby tudo é considerado um objeto, veja:"

puts "String.superclass: #{String.superclass}"

puts "\n Para a definição de variaveis e funções é utilizado o padrão snake case, como exemplificado abaixo:"

nome_completo = "Alice Neves Scholze"

puts "Nome completo: #{nome_completo}"

puts "\n Para definir uma variavel como 'null' bastar seta-la para 'nil'"

nome_completo = nil

puts "Nome completo: #{nome_completo}"

puts "\n Pode ser verificado se a variavel é nil utilizando .nil?, como abaixo:"

puts "A variavel é nil? #{nome_completo.nil?}"

puts "\n Podemos remover os espaços contidos no início e fim de uma string com o método strip"

texto = " meu texto "

puts "texto: #{texto}"

puts "texto.strip: #{texto.strip}"

puts "\n Entretanto se olharmos a variavel novamente, os espaços continuam mantidos."

puts "texto: #{texto}"

puts "\n Para que essa alteração seja realmente aplicada a variavel, basta inserir um '!' logo após o método"

texto.strip!

puts "texto.strip!: #{texto}"

puts "\n Vamos criar funções?"

preco = 50

def set_preco
    preco = 100
    puts "Preço alterado: #{preco}"
end

set_preco
puts "Preço: #{preco}"

puts "\n Note que ao definir 'preco' = 100, o valor inicial (50) não foi alterado.
Isso ocorre pq o escopo da variavel esta limitado a função, ou seja, 
a variavel 'preco' dentro da função não é a mesma de fora da função."

puts "--Operadores--"

puts "Comparação: > >= < <= == !="
puts "Lógicos: ! && || not and or"
puts "Matemáticos: + - * / %(mod) **(potenciação)"
puts "Controladores de fluxo: if else do while"

puts "\n Para realizar comparações é possível seguir a forma padrão:"
if 1 > 2
    puts "1 maior que 2"
else
    puts "2 maior que 1"
end

puts "\n ou... "

puts "2 maior que 1" if 2 > 1

puts "E o input e output? 'gets' e 'puts' :D"

puts "Digite seu nome: "
nome = gets

puts nome


