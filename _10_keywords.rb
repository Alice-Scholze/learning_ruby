# Aqui vamos ver um pouco sobre break, next e redo...

# Break: para a iteração caso a condição seja verdadeira
[1, 2, 3].each do |number|
    puts number
    break if number == 2
end

# Next: caso a condição seja verdadeira, a iteração atual é pulada e se inicia a próxima iteração
[1, 2, 3].each do |number|
    next if number == 2
    puts number
end

# Redo: a iteração é reiniciada se a condição for verdadeira
loop do
    puts "Digite um número: "
    number = gets.to_i
    redo if number > 10
    puts "passou"
end
