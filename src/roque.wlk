
import pepita.*
import ciudades.*
import comidas.*
import wollok.game.*

object roque {

	var property position = game.at(0,0)
	var property cantDeGranitos = 1 //Arranca en uno, ya que en el lugar que se encuentra hay granito. 
	method image() = "jugador.png"
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
		cantDeGranitos += 1
	}
	
	method dejar(comida) {
		comida.estasSiendoDejadaPor(self)
	}
	
	method colisionasteCon(persona) {
		game.say(self, "¡Hola!")
		game.say(persona, "Hola Roque")
	}
	
// Parte 3, no son necesarios. 	
//	var mochila = vacio //=Null
//	method agarrar(comida){
//		mochila.tirarte()
//		game.removeVisual(comida)
//		mochila = comida
//	}

//	method alimentar(ave) {
//		ave.come(mochila)
//		mochila.tirarte()
//		mochila = vacio	
//	}

}
