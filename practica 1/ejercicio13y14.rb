def listar(hash)
    # Inicializamos una cadena vacía para almacenar la lista
    lista = ""
  
    # Iteramos a través del hash y formateamos cada par clave/valor
    hash.each do |clave, valor|
      lista << "#{clave}: #{valor}\n"
    end
  
    return lista
end
  
  # Ejemplo de uso
mi_hash = {
    "Nombre" => "Juan",
    "Edad" => 30,
    "Ciudad" => "Ejemploville"
}
  
resultado = listar(mi_hash)
puts resultado

def listar_mejorada(hash, pegamento = ": ")
    # Inicializamos una cadena vacía para almacenar la lista
    lista = ""
  
    # Iteramos a través del hash y formateamos cada par clave/valor
    hash.each do |clave, valor|
      lista << "#{clave}#{pegamento}#{valor}\n"
    end
  
    return lista
end
  
  # Ejemplo de uso con el parámetro opcional
mi_hash = {
    "Nombre" => "Juan",
    "Edad" => 30,
    "Ciudad" => "Ejemploville"
}
  
resultado = listar_mejorada(mi_hash, ":::")  # Utiliza el valor por defecto ": "
puts resultado
  
  
  
  
  
  
  