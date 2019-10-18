import golosinas.*

object mariano {
	var golosinas = []
	 
	method comprar(golosina) {
		 golosinas.add(golosina)
	}
	method golosinas() {
		return golosinas 
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ golosina => golosina.libreGluten() })
	}
	
	method probarGolosinas() { 
		golosinas.forEach({ 
			golosina => golosina.mordisco()
		}) 
	}
	
	method pesoGolosinas() {
		// suma total **del peso** de cada golosina
		// puedo usar sum con una función
		return golosinas.sum({ golosina => golosina.peso() })
	}
}















