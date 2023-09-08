def rotacion(texto, n)
    resultado = ""
  
    texto.each_char do |caracter|
      if ('a'..'z').include?(caracter)
        base = 'a'.ord
        resultado << ((caracter.ord - base + n) % 26 + base).chr
      elsif ('A'..'Z').include?(caracter)
        base = 'A'.ord
        resultado << ((caracter.ord - base + n) % 26 + base).chr
      else
        resultado << caracter
      end
    end
  
    return resultado
  end
  
  # Ejemplo de uso
  texto_original = "¡Bienvenidos a la cursada 2023 de TTPS Opción Ruby!"
  rotacion_resultado = rotacion(texto_original, 13)
  puts rotacion_resultado
  
  
  
  
  
  