def rot13(texto)
    resultado = ""
  
    texto.each_char do |caracter|
      if ('a'..'z').include?(caracter)
        base = 'a'.ord
        resultado << ((caracter.ord - base + 13) % 26 + base).chr
      elsif ('A'..'Z').include?(caracter)
        base = 'A'.ord
        resultado << ((caracter.ord - base + 13) % 26 + base).chr
      else
        resultado << caracter
      end
    end
  
    return resultado
  end
  
  # Ejemplo de uso
  texto_original = "¡Bienvenidos a la cursada de TTPS Opción Ruby!"
  texto_encriptado = rot13(texto_original)
  puts texto_encriptado