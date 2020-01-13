# O padrão para nomenclartura de arquivos também é snake case
module Fabrica
    class Carro
        attr_accessor :marca, :modelo, :dono

        def initialize(marca, modelo)
            @marca = marca
            @modelo = modelo
        end
        
        def acelera
            puts "acelerando..."
        end
    end
end