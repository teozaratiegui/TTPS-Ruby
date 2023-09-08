# Verificamos que se proporcione al menos un argumento (el nombre)
if ARGV.empty?
    puts "Por favor, proporciona tu nombre como argumento."
    exit 1
  end
  
  # Obtenemos el nombre del primer argumento
  nombre = ARGV[0]
  
  # Saludamos al usuario utilizando el nombre proporcionado
  puts "¡Hola, #{nombre}!"

  #En terminal antes de hacer el load tengo que poner ARGV[0] = '...'