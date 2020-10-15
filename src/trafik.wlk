object trafic {
	
	var property interior = null
	var property motor = null
	const property color = "blanco"
	
	method capacidad(){
		var capacidad
		if (interior == "comodo") {
			capacidad = 5
		}else{ capacidad = 12}
		return capacidad	
	}

	method peso(){
		var peso
		if (interior == "comodo"){
			peso= 700
		}else{ peso =1200}
		return peso
	}
	
	method velMaxima(){
		var velocidad
		if (motor == "bataton"){
			velocidad=80
		}else {velocidad=130}
		return velocidad
	}

}
