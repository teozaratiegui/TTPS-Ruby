def tiempo_en_palabras(tiempo)
    case tiempo.min 
    when 0..10
        minutos = "en punto."
    when 11..20
        minutos = "y cuarto."
    when 21..34
        minutos = "y media."
    when 35..44
        minutos = "menos veinticinco."
        tiempo = Time.new(tiempo.year, tiempo.month, tiempo.day, tiempo.hour + 1, tiempo.min)
    when 45..55
        minutos = "menos cuarto."
        tiempo = Time.new(tiempo.year, tiempo.month, tiempo.day, tiempo.hour + 1, tiempo.min)
    when 56..59
        if tiempo.hour == 0
            return "Casi es la 1."
        else 
            return "Casi son las #{tiempo.hour + 1}"
        end
    end
    if tiempo.hour == 1
        return "Es la #{tiempo.hour} " + minutos
    else
        return "Son las #{tiempo.hour} " + minutos
    end
end

puts tiempo_en_palabras(Time.new(2023, 10, 21, 0, 58))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 6, 58))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 8, 45))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 9, 33))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 10, 1))

