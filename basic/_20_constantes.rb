# Constantes são definidas em letras maiúsculas:
MAX_VALUE = 10

# As letras em maiúsculo servem para mostrar que estamos lidando com uma constante. Mas isso é apenas visual...
# Se quisermos, podemos alterar o valor da constante :~ entretando vamos receber uma mensagem informando que ja tinhamos definido um valor antes
# _20_constantes.rb:5: warning: already initialized constant MAX_VALUE
# _20_constantes.rb:2: warning: previous definition of MAX_VALUE was here
MAX_VALUE = 20

puts MAX_VALUE

# Podemos usar constantes definidas em classes:
class Carro
    MODELOS = ['x', 'y']    
end

# E pra chamar:
puts Carro::MODELOS