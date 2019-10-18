class Bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

class BombonDuro inherits Bombon {
	override method mordisco() { peso = peso * 0.9 }
	method diaPreferido() { return "viernes" }
}

class Alfajor {
	var peso = 15
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

class Caramelo {
	var peso = 5

	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

class CarameloConCorazonDeChocolate inherits Caramelo {
	var meDieronUnMordisco = false 
	
	override method mordisco() {
		// acá hay que hacer lo que está especificado
		// en la superclase. Se hace así:
		super()
		meDieronUnMordisco = true
	}	
	
	override method gusto() {
		if (meDieronUnMordisco) {
			return "chocolate"
		} else {
			return super()
		}
	}
	
	method cambiarSaborAChocolate() {
		// después vemos
	}
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() { 
		if (peso >= 2) {
			peso = peso * 0.9
		}
	}
	method gusto() { return "naranja" }
	method libreGluten() { return true }
	// Un chupetín que pesa menos de 5 gramos
	// no da felicidad
	// Hay que poner un else, en este caso no se puede obviar
	// Hay que entender qué valor hay que devolver,
	// en este caso 0
	method felicidad() {
		if (peso >= 5) {
			return 10
		} else {
			return 0
		}
	}
}

object oblea {
	// definir
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { 
		return golosinaInterior.precio() + 2
	}
	method peso() { /* completar */ }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { /* completar */}	
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
}

