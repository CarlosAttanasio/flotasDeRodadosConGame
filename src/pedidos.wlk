import otrosRodados.*
import trafik.*
import dependencia.*

class Pedido {

	var property distanciaARecorrer = null
	var property tiempoMaximo = null
	var property cantPasajeros = null
	var property coloresIncompatibles = []
	
	method addColoresIncompatibles(unColor){coloresIncompatibles.add(unColor)}
	
	method quitarColoresIncompatibles(unColor){coloresIncompatibles.remove(unColor)}
	
	method velocidadRequerida(){ return distanciaARecorrer/ tiempoMaximo}
	
	method puedeSatisfacerPedido(unAuto){
		return unAuto.velMaxima() > self.velocidadRequerida() + 10 
			and unAuto.capacidad() >= self.cantPasajeros()
			and not coloresIncompatibles.any({ color => color == unAuto.color() }) 
	}

    
	method acelerar(){return tiempoMaximo -1}
	
	method relajar(){return tiempoMaximo +1}
	
	
	
}
