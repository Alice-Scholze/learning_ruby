# Vamos tratar exceções --

# Primeiro criamos essa função que contém uma validação para o caso de tentar dividir um número por zero
def divide(a, b)
    raise "Divisão por 0 inválida" if b == 0
    puts a / b
end

# Aqui fazemos um bloco 
begin
    result = divide 10, 0
    puts result
rescue => e
    # Esse bloco é executado caso ocorra uma exceção
    # Podria ser definido assim também:
    # rescue Exception => e
    puts "Erro ao dividir: " + e.message
else
    puts "Essa linha só será executada caso nenhuma exceção ocorrer"
ensure
    puts "Essa linha sempre será executada"
end
