import elementos.*

object macaria {
	const nivelIra= 10
	var property disfraces = []
	var property caramelos = 0
	
	method capacidadSusto(){
		return nivelIra + disfraces.fold(0,{acum, disfraz => acum + disfraz.nivelSusto()})
	}
	method recibirCaramelos(_caramelos){
		caramelos += (_caramelos*3).div(4)
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method dejarDeUsarMenosEfectivo(){
		const menosEfectivo = disfraces.min({disfraz => disfraz.nivelSusto()})
		disfraces.remove(menosEfectivo)
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}


}

object pancracio {
	var cantidadDeU = 4
	var property disfraces = [mascaraDracula]
	var property caramelos = 0
	
	method capacidadSusto(){
		return cantidadDeU + disfraces.fold(0,{acum, disfraz => acum + disfraz.nivelSusto()})
	}
	method disfrazar(disfraz){
		disfraces.clear()
		disfraces.add(disfraz)
	}
	method recibirCaramelos(_caramelos){
		caramelos += _caramelos
	}
	method quitarDisfraz(disfraz){
		cantidadDeU += 2
	}
}

// El chico inventado .

object pedro {
	var property disfraces = []
	var property caramelos = 0
	
	method capacidadSusto(){
		return 0 + disfraces.fold(0,{acum, disfraz => acum + disfraz.nivelSusto()})
	}
	method disfrazar(_disfraz){
		disfraces.add(_disfraz)
	}
	method recibirCaramelos(_caramelos){
		caramelos += _caramelos
	}
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
}

