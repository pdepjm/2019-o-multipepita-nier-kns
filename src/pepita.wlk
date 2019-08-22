object pepita {
	var energia = 0
	var distanciaRecorrida = 0

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia > 500 && energia < 1000
	}
	
	method cuantoQuiereVolar() {
		var kmVuelo = energia / 5
		
		if(energia >= 300 && energia <= 400)
			kmVuelo += 10
		if(energia%20==0)
			kmVuelo += 15
		
		return kmVuelo
	}
	
	method salirAComer(lugar, comida) {
		distanciaRecorrida += lugar.distanciaKmACasa()
		energia = energia + comida.energiaQueOtorga()
		distanciaRecorrida += lugar.distanciaKmACasa()
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var estaMojado = false
	
	method mojarse() {
		estaMojado = true
	}
	
	method secarse() {
		estaMojado = false
	}
	
	method energiaQueOtorga() {
		if(estaMojado)
			return 15
		else
			return 20
	}
}

object canelones {
	var energiaBase = 20
	var tieneSalsa = false
	var tieneQueso = false
	
	method ponerSalsa() {
		if(not tieneSalsa)
			energiaBase += 5
		tieneSalsa.negate()
	}
	
	method sacarSalsa() {
		if(tieneSalsa)
			energiaBase -= 5
		tieneSalsa.negate()
	}
	
	method ponerQueso() {
		if(not tieneQueso)
			energiaBase += 7
		tieneQueso.negate()
	}
	
	method sacarQueso() {
		if(tieneQueso)
			energiaBase -= 7
		tieneQueso.negate()
	}
	
	method energiaQueOtorga() {
		return energiaBase
	}
}

object depositoDeAlpiste {
	method distanciaKmACasa() {
		return 5
	}
}
