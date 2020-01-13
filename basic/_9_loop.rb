# Defini a função logo abaixo só para ajudar nos loops dps ;:
def print(cont)
    puts cont
    cont + 1
end

# No ruby temos várias formas de trabalhar com estruturas de repetição. Olha só:
$cont = 1
while $cont < 5
    $cont = print($cont)
end

# Podemos fazer assim tbm
$cont = 1
while $cont < 5 do $cont = print($cont) end

# O 'until' funciona da mesma forma que o while
$cont = 1
until $cont < 5 do $cont = print($cont) end

# Temos tbm algo como o do while
$cont = 1
begin
    puts $cont
    $cont = $cont + 1
end while $cont < 5

# Além disso, há também o for... olha os exemplos:
for i in [10,20,30]
    puts i
end

for i in 1..10
    puts i
end


# Ah! Aproveitando... aqui definimos $cont com o $ na frente né?
# Isso pq eu queria poder usá-lo dentro dos blocos de código while.
# Mas pra isso precisava de uma variavel global :D
# E é justamente sso que o $ faz, torna a variavel global :)

# Outra forma de iterar em Ruby é com o each... ele é como o foreach do C#, muda só a sintexe mesmo

['laranja', 'maça', 'uva'].each do |fruta|
    puts fruta
end

# Podemos simplificar isso para uma única linha também

['laranja', 'maça', 'uva'].each { |fruta| puts fruta }

# Uma coisa legal que também podemos fazer é utilizar método no each.
# Por exemplo, abaixo chamados o método upto que acrescenta 1 ao 10 inicial para cada execução.. Olha só:

10.upto(20).each { |i| puts i }

# Tem também o loop infinito... esse loop precisa de alguma condição no bloco que contenha a cláusula break para parar sua execução
loop do
    puts "olá"
    break
end
