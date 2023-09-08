#SIMBOLOS

puts "SIMBOLOS:"

puts ""

:hola.to_s #creo el simbolo hola, OJO, TO_S LO HACE UN STRING
puts :chau #Puts significa put string, imprime un string u objeto en la terminal
puts "mi_simbolo".to_sym.inspect #si quiero que me devuelva :nombre_simbolo tengo que poner el inspect, que hace que devuelva
                                 # claramente el contenido del objeto, de forma no ambigua, sirve para debug y logging
puts "otro_simbolo".intern
#Este no existe Symbol.new(:nuevo_simbolo).to_s
#Las tres formas son to_sym, :, y intern
puts "---------------------------------------------"

#STRINGS

puts "Strings"
puts ""

my_string = "Lo creo con comillas dobles"
another_string = 'lo creo con comillas simples'
another_one = String.new #Este crea un string vacio
other = String.new("lo creo con un parametro")
str = <<~END_OF_STRING
    this is a 
    multi-line string
END_OF_STRING

puts my_string, another_string, another_one, other, str

puts "--------------------------------------------"

puts "Arrays"
puts ""

my_array = [1, 2, 3, 4, 5]
empty_array = Array.new
sized_array = Array.new(3)
string_array = %w(apple banana cherry) #Acá uso la notación literal %w
symbol_array = %i(one two three)

puts my_array, empty_array, sized_array, string_array, symbol_array

puts "-------------------------------------------"

puts "Hashes"

my_hash = { "name" => "Alice", "age" => 30 }
empty_hash = Hash.new
symbol_hash = { :name => "Bob", :age => 25 } 
# or                                        Estos dos son usando simbolos
symbol_hash = { name: "Bob", age: 25 }
string_key_hash = Hash[%w(name age).zip(["Carol", 28])]

puts my_hash, empty_hash, default_hash, symbol_hash, string_key_hash



