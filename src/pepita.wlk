import ciudades.*
import comidas.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var property position = game.at(3,3)
	method image() = if (energia > 100) {"pepita2.png"} else {"pepita.png"}
	method energiaParaVolar(distancia) = 15 + 5 * distancia
	method come(comida) { energia += comida.energia() }
	method move(nuevaPosicion) {
		if (self.alcanzaLaEnergia(nuevaPosicion)){
			energia -= self.calcularEnergiaDeVuelo(nuevaPosicion)
			self.position(nuevaPosicion)
		}
		else game.say(self, "Dame de comer primero!")
	}		
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}
		else self.move(unaCiudad.position())
			 game.say(self, "Ya estoy en!") 
	}	

	//Division
	method alcanzaLaEnergia(nuevaPosicion)		= self.energia() > self.calcularEnergiaDeVuelo(nuevaPosicion)
	method calcularEnergiaDeVuelo(nuevaPosicion)= self.energiaParaVolar(position.distance(nuevaPosicion))
}