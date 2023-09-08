def string_reverso(input_string)
    return input_string.reverse
end

def string_sin_espacio(input_string)
    return input_string.delete(' ')
end

def string_a_arreglo_ascii(input_string)
    return input_string.chars.map(&:ord)
end

def string_remplaza_vocal(input_string)
    replacements = {
      'a' => '4',
      'A' => '4',
      'e' => '3',
      'E' => '3',
      'i' => '1',
      'I' => '1',
      'o' => '0',
      'O' => '0',
      'u' => '6',
      'U' => '6'
    }
    
    return input_string.gsub(/[aeiouAEIOU]/, replacements)
end

str = "Hello world!"

puts string_reverso(str)

puts string_sin_espacio(str)

puts string_a_arreglo_ascii(str)

puts string_remplaza_vocal("Carmen barbieri del tribular platense")