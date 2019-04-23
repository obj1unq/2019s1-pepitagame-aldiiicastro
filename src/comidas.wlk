import wollok.game.*

object manzana {
	var property position = game.at(5,1)
	method image() = "Sin título-3.png"
	method energia() = 80
	method colisionasteCon(persona){
		persona.agarrar(self)
	}
	method tirarte() {
		position = game.at(5.randomUpTo(1), 1.randomUpTo(5))
		game.addVisual(self)
	}
}

object alpiste {
	var property position = game.at(5,5)
	method image() = "alpiste.png"
	method energia() = 5
	method colisionasteCon(persona){
		persona.agarrar(self)
	}
	method tirarte() {
		position = game.at(5.randomUpTo(1), 1.randomUpTo(5))
		game.addVisual(self)
	}
}

object vacio { //Null Object: polimorfica con el resto pero no hace nada.
	var property position = game.at(0,5)
	method image() = ""
	method energia() = 0
	method colisionasteCon(persona){
		persona.agarrar(self)
	}
	method tirarte() {
		position = game.at(5.randomUpTo(1), 1.randomUpTo(5))
		
	}
}
