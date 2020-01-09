# A estrutura de 'if' 'else' é parecida com o que temos em java ou C#
# entretanto aqui chamado 'if', 'elsif', 'else'. Veja:

if 1 > 2
    puts "1 > 2"
elsif 1 == 1
    puts "1 == 1"
else
    puts "1 != 1"
end

# Podemos simplificar o 'if' 'else' para uma única linha, como segue:
if 1 > 2  then puts "1 > 2" else puts "2 > 1" end

# com elsif também bele ;)
if 1 > 2  then puts "1 > 2" elsif 1 == 1 then "1 == 1" else puts "2 > 1" end

# Podemos fazer de outra forma também, olha só:
puts "2 > 1" if 2 > 1

# Se condição for falsa, ai não acontece nada
puts "1 > 2" if 1 > 2

# E anida, podemos fazer meio que um 'Not if' :]
puts "1 não é > 2" unless 1 > 2

# Nesse caso também vale como antes, se a condição for false (não, pera, verdadeira... não, pera)
# hehe !(!condition)   :D
# ai não acontece nada, pois o puts não é chamado
puts "1 é > 2" unless 2 > 1
