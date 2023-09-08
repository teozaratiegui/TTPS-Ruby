def longitud(arreglo)
    # Creamos un nuevo arreglo que contendrá las longitudes de los Strings
    longitudes = []
  
    # Iteramos a través del arreglo de entrada y calculamos la longitud de cada String
    arreglo.each do |elemento|
      if elemento.is_a?(String)
        longitudes << elemento.length
      else
        # Si el elemento no es una cadena, agregamos 0 para indicar una longitud de 0
        longitudes << 0
      end
    end
  
    return longitudes
end

puts longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2023'])
