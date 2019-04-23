
import pepita.*
import ciudades.*
import comidas.*
import wollok.game.*

object roque {
	var mochila = vacio //=Null
	var property position = game.at(0,0)
	method image() = "jugador.png"
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
	method agarrar(comida){
		mochila.tirarte()
		game.removeVisual(comida)
		mochila = comida
	}
	method alimentar(ave) {
		ave.come(mochila)
		mochila.tirarte()
		mochila = vacio
		
	}
}
