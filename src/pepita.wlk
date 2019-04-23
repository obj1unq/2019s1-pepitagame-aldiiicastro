import ciudades.*
import comidas.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	method image() { return if (energia > 100) {"pepita2.png"}
							else "pepita.png"
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}
		else self.move(ciudad.position())
	}

	method energiaParaVolar(distancia) { return  	if (energia > 15 + 5 * distancia) 
															{15 + 5 * distancia}
													else game.say(self, "¡Dame algo de comer primero!")
														}
	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}	
}
