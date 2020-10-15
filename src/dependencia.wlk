import otrosRodados.*
import trafik.*
import pedidos.*

class Dependencia {
	var property cantEmpleados
	var property flota =[]
	var property listaPedidos =[]
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}

	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	
	method pesoTotalFlota(){
		return (flota.sum( { rod => rod.peso()}))
	}

	method estaBienEquipada(){
		return(flota.size() >3 and flota.all( { rod => rod.velMaxima() >= 100}))
	}

	method capacidadTotalFlota(){ return (flota.sum( { rod => rod.capacidad()}))}
	
	method capacidadTotalEnColor(unColor){
		return flota.filter({ rod => rod.color() == unColor}).sum({ rod => rod.capacidad() }) 
	}

	method colorDelRodadoMasRapido(){
		return(flota.max({rod => rod.velMaxima()})).color()
	} 
	
	method capacidadFaltante(){
		return ((self.capacidadTotalFlota() - self.cantEmpleados()).abs())
	}

	method esGrande(){ return (self.cantEmpleados() >= 40 and flota.size() >=5)
		
	}

	method addPedido(unPedido){listaPedidos.add(unPedido)}
	
	method quitarPedido(unPedido){listaPedidos.remove(unPedido)}
	
	method totalPasajerosRegistrados(){ 
		return listaPedidos.sum( { pedido => pedido.cantPasajeros()})
	}
	
	method pedidosNoSatisfechos() {
		return listaPedidos.map({ pedido => self.puedeSatisfacerViaje(pedido)})
	}
	
	method puedeSatisfacerViaje(pedido) {
		return flota.any({veh => pedido.puedeSatisfacerPedido(veh)})
		
	}
	
	method coloresIncompatiblesEnPedidos(unColor){
		return listaPedidos.all({pedido => pedido.coloresIncompatibles().any({ colores => colores == unColor })
		})
	}

	method relajarPedidos(){
		listaPedidos.forEach( { rod => rod.relajar()})
	}
}

