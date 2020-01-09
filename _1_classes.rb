# O nome das classes seguem padrao CamelCase
class Carro

    # O nome de métodos seguem padrão snake_case
    def velocidade_maxima
        # Em Ruby não é necessário utilizar a palavra chave 'return' para retornar um método
        # será retornada a última linha do método (neste caso, 250)
        250
    end

    def adiciona_marca(marca)
        # O atributo 'marca' ainda não existe para esse objeto, 
        # ela será adicionada no momento da chamada deste método
        @marca = marca
    end

    # Para poder acessar a variavel de instancia fora da classe é necessário definir um método para isso
    def marca
        @marca
    end

    # É possível adicionar atributos por métodos como feito anteriormente, porém, isso acrescenta
    # muito código. Para simplificar, pode usar o seguinte (normalmente no início da classe, inseri 
    # aqui para seguir uma sequência lógica na leitura deste documento :D )
    attr_accessor :marca2

    # Podem ser adicionados vários atributos em sequência na verdade...
    attr_accessor :modelo, :ano

    # O acessor deixa o get e set do atributo disponíveis, 
    # para manter apenas o get por exmplo, pode-se usar :
    attr_reader :alguma_coisa 

    # E para apenas escrita:
    attr_writer :outra_coisa

    # Se quisermos retornar todos esses atributos podemos criar um método responsável por isso
    def descricao
        "Marca: #{@marca} - Marca 2: #{marca2} - Modelo - #{@modelo} - Alguma coisa: #{@alguma_coisa} - Outra coisa: #{@outra_coisa}"
    end
end

carro = Carro.new
puts "Velocidade máxima: #{carro.velocidade_maxima}"

# Adicionando uma marca ao carro
carro.adiciona_marca("Ford")
puts "Marca: #{carro.marca}"

carro.marca2 = "Marca 2"
puts "Marca 2: #{carro.marca2}"

carro.modelo = "Focus"
carro.ano = 2020
puts "Modelo: #{carro.modelo} - Ano: #{carro.ano}"

# Descomente a próxima linha para ver o erro ao tentar setar valor a um atributo somente leitura:
#carro.alguma_coisa = "oi"
# Já o get pode ser chamado normalmente
puts carro.alguma_coisa

# Setamos um atributo somente escrita:
carro.outra_coisa = "oi"
# Agora descomente a próxima linha para ver erro ao tentar ler este atributo:
#puts carro.outra_coisa

# Chamando o método para ver todos os atributos:
puts carro.descricao