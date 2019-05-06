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
		else game.say(self, "Ya estoy en!") 
		// ASi lo hice y esta mal self.move(ciudad.position())
	}

method energiaParaVolar(distancia) = 15 + 5 * distancia

		method volaYCome(comida){
		game.removeVisual(comida)
		self.move(comida.position())
		self.come(comida)
	}
	
	method move(nuevaPosicion) {
		if (self.alcanzaLaEnergia(nuevaPosicion)){
			energia -= self.calcularEnergiaDeVuelo(nuevaPosicion)
			self.position(nuevaPosicion)
		}
		else{
			game.say(self, "Dame de comer primero!")
		}
	}
	method alcanzaLaEnergia(nuevaPosicion){
		return self.energia() > self.calcularEnergiaDeVuelo(nuevaPosicion)
	}
	method calcularEnergiaDeVuelo(nuevaPosicion){
		return self.energiaParaVolar(position.distance(nuevaPosicion))
	}	
}