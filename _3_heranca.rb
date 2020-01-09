class  Automovel

    # Quando utilizado o self, não é necessário instanciar a classe para chamar o método (método de classe)
    def self.tipo_cambio
        puts "manual"
    end

    # Já para esse método é necessário que a classe esteja instaciada (método de instancia)
    def acelera
        verifica_combustivel
        puts "Acelerando automóvel..."
    end
    
    # Por padrão, os métodos em Ruby são publicos. Para torná-los privados faz-se o seguinte:
    private
    # Tudo daqui para baixo será privado
    # Entretando, as classes filhas podem acessá-lo, diferente de linguagens como java ou C# em que,
    # para as classes filhas poderem acessá-los, seria necessário definir os métodos como protected
        def verifica_combustivel
            puts "Verificando combustível"
        end
end

# Através do simbolo >  seguido da classe a ser herdada, definimos que Carro herda de Automóvel
class Carro < Automovel

    # Automovel possui o método 'acelera'
    def acelera
        puts "Verificando equipamentos"

        # Chamando o 'super', chamamos o método da classe pai
        super
    end
end

automovel = Automovel.new
automovel.acelera

carro =  Carro.new
carro.acelera

# Chamando método sem instanciar a classe, tanta na classe pai quanto filha
Automovel.tipo_cambio
Carro.tipo_cambio

# Descomente a linha abaixo para visualizar o erro que ocorre ao tentar acessar um método privado
#automovel.verifica_combustivel