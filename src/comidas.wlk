import wollok.game.*
import roque.*


class Manzana {
	var property position = game.at(5,1)
	method image() = "Sin título-3.png"
	method energia() = 80
	method colisionasteCon(persona){
		persona.come(self)
		game.removeVisual(self)
	}
	method estasSiendoDejadaPor(persona) {
		self.position(persona.position())
		game.addVisual(self)
	}
	
// Parte 3 no lo necesita.
//	method tirarte() {
//		position = game.at(5.randomUpTo(1), 1.randomUpTo(5))
//		game.addVisual(self)
//	}
}


class Alpiste {
	var property position = game.at(5,5)
	var property cantDeGranos = 0
	method energia() = 0.5 * cantDeGranos
	method image() = "alpiste.png"	
	method colisionasteCon(persona){
		persona.come(self)
		game.removeVisual(self)
	}
	method estasSiendoDejadaPor(persona) {
		self.position(persona.position())
		game.addVisual(self)
		cantDeGranos = persona.cantDeGranitos()
		persona.cantDeGranitos(0)
	}
	
// Parte 3 no lo necesita.	
//	method tirarte() {
//		position = game.at(5.randomUpTo(1), 1.randomUpTo(5))
//		game.addVisual(self)
//	}
}


// Parte 3 no lo necesita.
// object vacio { //Null Object: polimorfica con el resto pero no hace nada.
//	var property position = game.at(0,5)
//	method image() = ""
//	method energia() = 0
//	method colisionasteCon(persona){
//		persona.agarrar(self)
//	}
// method tirarte() { No hace nada
//}

