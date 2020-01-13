# Ruby não permite herança múltipla, mas para compartilhar comportamentos, podemos usar módulos.
# Módulos são parecidos com classes, entetanto não podem ser instanciados.

module Compartilhado
    def imprime_texto
        puts "TEXTO!!!"
    end    
end

class Carro
    # Aqui temos o chamado mixin com Compartilhado
    include Compartilhado

    def metodo_do_carro
        puts "Carro"
    end
end

carro = Carro.new
carro.imprime_texto

# Módulos também são usados como namespaces
module Fabrica
    class Carro
        def metodo_do_carro
            puts "Carro da fábrica"
        end
    end    
end

novo_carro = Fabrica::Carro.new

# Assim, temos dois objetos. Um Carro da fábrica e outro não:
carro.metodo_do_carro
novo_carro.metodo_do_carro

# Sendo assim, podeos ter inclusive classes de mesmo nome, desde que separadas por módulo.