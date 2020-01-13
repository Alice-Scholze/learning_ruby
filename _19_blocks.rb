# Bloco são trechos de código reutilizaveis

require 'net/http'
require 'json'

def lista_usuarios
    uri = URI('https://jsonplaceholder.typicode.com/users')
    response = Net::HTTP.get(uri)
    # Parseia a resposta string para json e, se a chamada tiver um bloco, executa o bloco
    # O yield retorna cada um dos valores. O JSON é o parametro do yeld que vamos conseguir trabalhar no bloco de código.
    yield JSON.parse(response) if block_given?
    puts "Finalizando listagem de usuários"
end

lista_usuarios do |usuarios|
    usuarios.each{ |usuario| puts "Nome: #{usuario["name"]}"}
end

# Blocos não são reutilizaveis
# Métodos não podem trabalhar com mais de um bloco
# Blocos não são instanciaveis, não são objetos
# A saída para esse problema são as Procs. A Proc é um objeto ruby que é instanciado e pode receber um bloco.

def lista_usuarios(quantidade, my_proc)
    uri = URI('https://jsonplaceholder.typicode.com/users')
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    # chamamos uma proc com o método call
    my_proc.call(quantidade)
    yield JSON.parse(response) if block_given?
    puts "Finalizando listagem de usuários"
end

debug = Proc.new { |variavel| puts "Debugando variavel #{variavel}"}

lista_usuarios 10, debug do |response|
    # Podemos ainda assim ter mais um bloco de código
    puts "Total users: #{response.size}"
end

# Ou passar apenas a proc
lista_usuarios 10, debug

# Além de blocks e procs, temos a função anonima lambda.
# Lamba são instancias de procs, olha só:
lamb = lambda { puts "sou uma lambda" }
lamb.call
puts lamb.class

# A difirença é que ela tem algumas diferenças
# Podemos instanciar assim:
lamb = -> () { puts "Sou uma lambda" }
lamb.call

# Vamos fazer algumas comparações para entender as diferenças:
proc = Proc.new { |nome| puts "proc: meu nome é #{nome}" }
lamb = -> (nome) { puts "lambda: meu nome é #{nome}" }

# Se chamarmos a proc sem argumentos, ela será chamada e o argumento receberá valor nil.
# Se chamarmos a lambda sem argumentos, dará um erro na execução (descomente a linha 62 para ver ver).
proc.call()
#lamb.call()

# Se passar vários argumentos para a proc, ela vai utilizar os que precisa e ignorar o restante:
proc.call('a', 'b', 'c')

# Outra diferença é
def metodo_lambda
    -> () { return "return lambda" }.call
    return "return metodo"
end

puts metodo_lambda

def metodo_proc
    Proc.new { return "return proc" }.call
    return "return metodo"
end

puts metodo_proc