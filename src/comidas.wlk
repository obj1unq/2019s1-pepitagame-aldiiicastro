import wollok.game.*

object manzana {
	var property position = game.at(5,1)
	method image() = "Sin título-3.png"
	method energia() = 80
}

object alpiste {
	var property position = game.at(5,5)
	method image() = "alpiste.png"
	method energia() = 5
}
