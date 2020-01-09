# É possível abrir uma classe em Ruby.
# Mas o que seria isso???
# Bem... digamos que estamos rodando esse script com a seguinte classe

class Carro
    def acelera
        puts "acelerando..."
    end
end

carro = Carro.new
carro.acelera

# Assim teos nossa classe definida. Mas e se quisermos adicionar um novo método em parar a execução???
# Ruby nos permite fazer o seguinte?

class Carro
    def freia
        puts "freiando..."
    end
end

# Agora podemos simplismente chamar o novo método... interessante não ???
carro.freia