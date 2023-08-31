object ludmila{
	
	method precioKilometro() = 18
}

object anaMaria{
	var economicamenteEstable = true
	
	
	method economicamenteEstable(nuevoEstado){
		economicamenteEstable = nuevoEstado 
	}
	
	method economicamenteEstable() = economicamenteEstable
	
	method precioKilometro(){
		var salida
		if (economicamenteEstable){
			salida = 30
		}
		else{salida = 25}
		return salida
	} 
}

object teresa {
	var precio = 22
	
	method precioKilometro() = precio
	method precioKilometro(nuevoPrecio){
		precio = nuevoPrecio
	}
}

object melina{
	var trabajaPara
	
	method trabajarPara(cliente){ trabajaPara = cliente }
	method paraQuienTrabaja() = trabajaPara
	method precioKilometro() = trabajaPara.precioKilometro() - 3
}