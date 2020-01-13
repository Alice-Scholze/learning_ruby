# Range: uma classe que nos da um intervalo

intervalo = 1..5
puts intervalo.class

# Vamos verificar se um número esta dentro do intervalo?
puts intervalo.include? 3
puts intervalo.include? 6

# Range também implementa o enumerable,então...
intervalo.each { |i| puts i }
intervalo.map { |i| puts i * i }
puts intervalo.reduce(0) { |i, j| i + j}

# Intervalos podem ser utilizados também em cases:
entrada = 2

case entrada
when 1..2 then puts("entre 1 e 2")
else "não esta entre 1 e 2"
end