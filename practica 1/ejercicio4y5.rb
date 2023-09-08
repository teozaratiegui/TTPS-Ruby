puts 'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id

#Esto devuelve falso porque cada string tiene su propia identidad, no funciona como un simbolo que es unico para cada nombre

def reemplazar(frase)
    frase = frase.gsub('{', 'do\n')
    frase = frase.gsub('}', '\nend')
    puts frase
end 

str = "3.times { |i| puts i }"
puts str

reemplazar(str)