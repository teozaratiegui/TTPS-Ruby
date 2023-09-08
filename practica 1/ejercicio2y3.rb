#Ways to cast an object into a string

number = 42
str = number.to_s

pi = 3.14159
formatted_pi = sprintf("%.4f", pi) 

puts formatted_pi.inspect

#Casteo de string a simbolo:

str = "hola abuela"
simbolo1 = str.to_sym

otro = "hola abuelo"
simbolo2 = str.intern

ultimo = "Terremoto"
simbolo3 = :ultimo #este no usa la var ultimo

puts simbolo1.class
puts simbolo2.class
puts simbolo3.class

puts simbolo1.inspect, simbolo2.inspect, simbolo3.inspect