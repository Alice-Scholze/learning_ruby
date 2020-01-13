# Podemos definir alguns parametros default, olha um exemplo

def produzir(tamanho = "M", cor = "azul", quantidade)
    puts "tamanho #{tamanho} - cor #{cor} - #{quantidade}" 
end

# Neste caso, podemos não passar valor para tamanho e cor ao chamar a função
produzir(10)

# Se quisermos substituir os valore default, basta passa-los como parametro
produzir("P", "Amarelo", 10)

# Podemos usar parametros variaveis
def print_names(*names)
    names.each { |name| puts name}
end

print_names 'a', 'b', 'c'

# Podemos definir parametros com palavras chave
def produzir(quantidade, tamanho: "M", cor: "azul")
    puts "tamanho #{tamanho} - cor #{cor} - #{quantidade}" 
end

# Assim, conseguimos nomear os parametros
produzir(15, cor:"verde", tamanho:"P")