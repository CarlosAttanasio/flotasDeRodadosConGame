import dependencia.*
import trafik.*
import wollok.game.*

object rojo {method image() { return "autitorojo.png" }}
object verde {method image() { return "autitoverde.png" }}
object azul {method image() { return "autitoazul.png" }}
	
class Corsa {
	var property color = null
	var property position = game.at(0,0)
	var property image = "autitorojo.png"
	var property listaPosiciones = []
	
	
	method capacidad(){return 4}
	method peso(){return 1300}
	method velMaxima(){return 150}
	
	method moverArriba(){
		self.position(self.position().up(1))
		listaPosiciones.add(self.position())
	}
	method moverAbajo(){
		self.position(self.position().down(1))
		listaPosiciones.add(self.position())
	}
	method moverIzquierda(){
		self.position(self.position().left(1))
		listaPosiciones.add(self.position())
	}
	method moverDerecha(){
		self.position(self.position().right(1))
		listaPosiciones.add(self.position())
	}
	
	method pasoPor(posicion){ return listaPosiciones.contains(posicion)}
	method pasoPorFila(numero) { return listaPosiciones.contains(numero)}
	method recorrioFilas(lista_de_numeros) { return listaPosiciones.contains(lista_de_numeros)} 
	
	method cambiaARojo(){
		self.image(rojo.image())
	}
	
	method cambiaAVerde(){
		self.image(verde.image())
	}
	
	method cambiaAAzul(){
		self.image(azul.image())
	}
	
}

class Kwid{
	
	var property tanqueAdicional = false
			
	method color(){ return "azul"}
	
	method capacidad(){
		var capacidad
		if (tanqueAdicional){
			capacidad = 3
		}
		else {
			capacidad = 4
		}
		return capacidad
	}

	method peso(){
		var peso
		if (tanqueAdicional){
			peso = 1350
		}
		else {
			peso = 1200
		}
		return peso
	}
	
	method velMaxima(){
		var velocidad 
		if (tanqueAdicional){
			velocidad = 120
		}
		else {
			velocidad = 110
		}
		return velocidad
	}

}
	

class AutoEspecial{
	var property color
	var property peso
	var property capacidad
	var property velMaxima
	
}	
	
