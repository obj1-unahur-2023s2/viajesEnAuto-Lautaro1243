import clientes.*

object roxana{
	
	method precioViaje(cliente, kms) = cliente.precioKilometro() * kms
}

object gabriela{
	
	method precioViaje(cliente, kms) = (cliente.precioKilometro() * kms) * 1.2
}

object mariela{
	
	method precioViaje(cliente, kms){
		return 50.max(cliente.precioKilometro() * kms)
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
	var reemplazaA
	
	method reemplazar(remisera){ reemplazaA = remisera }
	method reemplaza() = reemplazaA
	method precioViaje(cliente, kms) = reemplazaA.precioViaje(cliente, kms)
	
}



