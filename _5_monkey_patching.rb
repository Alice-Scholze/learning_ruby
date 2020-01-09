# Anteriormente vimos como adicionar novos métodos a classe em tempo de execução
# Mas se quisermos sobreescrever esses métodos ???
# Chamamos isso de Monkey Patching ;) Veja como funciona:

class Carro
    def acelera
        puts "acelerando..."
    end
end

carro = Carro.new
carro.acelera

# Mas e se quisermos alterar o método acelerando ??? Fazmos o seguinte:

class Carro
    def acelera
        puts "alterado :D"
    end
end

carro.acelera
