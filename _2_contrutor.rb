class Carro

    attr_accessor :marca, :modelo

    # Assim se define um construtor em Ruby
    def initialize(marca, modelo)
        @marca = marca
        @modelo = modelo
    end
end

# Agora ao instanciar um novo carro é necessário passar a marca e modelo
carro = Carro.new("Ford", "Focus")

# ou... (não é necessário passar os parenteses)
carro2 = Carro.new "Ford", "Focus"

puts carro