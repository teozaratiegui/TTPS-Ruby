[:upcase, :downcase, :capitalize, :swapcase].map do |meth| 
    result = "TTPS Ruby".send(meth)
    puts result
end

#Primero declaro un arreglo de simbolos, por los cuales meth, de metodo, va a iterar.
#Despues al string TTPS Ruby se le va a enviar el metodo que corresponda con el simbolo que reciba  
#Al final devuelve un arreglo de todos los metodos que se aplicaron al string, no se acumulan, c/u se le aplica al string TTPS Ruby


#SEND Y PUBLIC SEND
#send lo usaría cuando, por algun motivo, tengo una razón legitima para acceder a metodos privados de una clase

#send_public lo usaría cuando quiero acceder de manera segura a metodos de una clase, sin traspasar la seguridad y privacidad de esta

#Usaría estos metodos cuando deseo ejecutar metodos de clases de forma dinámica, cuando no sé exáctamente qué método se va a ejecutar

#La diferencia entre 1 y otro es que el public_send solo puede ejecutar métodos públicos de la clase, en caso de ser privado lanza una
#excepción. Send, por otro lado, traspasa esa barrera de seguridad sin ningún problema.
    