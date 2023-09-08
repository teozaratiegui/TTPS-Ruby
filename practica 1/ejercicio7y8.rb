def contar(str1, str2)
    # Utilizamos una expresión regular con la opción 'i' para que la búsqueda sea insensible a mayúsculas y minúsculas
    matches = str1.scan(/#{Regexp.escape(str2)}/i)
  
    # La función scan devuelve un array de coincidencias, así que simplemente contamos la longitud del array
    return matches.length
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca
    .", "la")

def contar_apariciones_exactas(str1, str2)
    # hago que los caracteres especiales no los tenga en cuenta para las expresiones literales
    escaped_str2 = Regexp.escape(str2)
      
    # Creamos una expresión regular que busca la palabra completa str2 insensible a mayúsculas y minúsculas
    regex = /\b#{escaped_str2}\b/i
      
    # Utilizamos scan con la expresión regular para encontrar todas las coincidencias
    matches = str1.scan(regex)
      
    # Devolvemos la cantidad de coincidencias encontradas
    return matches.length
end

puts contar_apariciones_exactas("La casa de la esquina tiene la puerta roja y la ventana blanca
    .", "la")

    