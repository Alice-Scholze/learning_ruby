# O Ruby possui os operadores lógicos && || not and or not.
# Apesar de por exemplo, && e and serem responsável por verificar se os dois lados da sentença 
# são verdadeiros, deve-se ficar atento a sua diferença. O && possui maior precedencia que o ||.
# Já o and possui mesma precedencia que o or. Por isso deve-se ter atenção a este detalhe que muitas 
# vezes não fica muito implícito e acaba confundindo a cabeça hehe

# Vamos a alguns exemplo básicos só pra relembrar?

if 1 > 2 && 2 > 1
    puts "1 > 2 e 2 > 1"
else
    puts ":3"
end