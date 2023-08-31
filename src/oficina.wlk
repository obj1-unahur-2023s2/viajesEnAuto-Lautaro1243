import remiseras.*
import clientes.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	
	method asignarRemiseras(remisera1, remisera2){
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras(){
		var remisera = primeraRemisera
		primeraRemisera = segundaRemisera
		segundaRemisera = remisera
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		
		if(primeraRemisera.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms) > 30){
			return segundaRemisera
		}
		else { return primeraRemisera }
	}
	
	
}
