import clientes.*
object roxana{
	
	method precioViaje(cliente, kms) = cliente.precioKilometro() * kms
}

object gabriela{
	
	method precioViaje(cliente, kms) = (cliente.precioKilometro() * kms) * 1.2
}

object mariela{
	
	method precioViaje(cliente, kms){
		var salida
		if (cliente.precioKilometro() * kms <= 50){
			salida = 50
		}
		else {salida = cliente.precioKilometro() * kms} 
		return salida
	}
}

object juana{
	
	method precioViaje(cliente, kms){
		var salida 
		if (kms <= 8){
			salida = 100
		}
		else {salida = 200}
		return salida
	}
}

object lucia{
	var reemplaza
	
	method reemplazar(remisera){ reemplaza = remisera }
	method reemplaza() = reemplaza
	method precioViaje(cliente, kms) = reemplaza.precioViaje(cliente, kms)
	
}



