import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var property caramelos = 0
	
	method capacidadSusto(){
		return nivelIra + disfraces.fold(0,{acum, disfraz => acum + disfraz.nivelSusto()})
	}
	method recibirCaramelos(_caramelos){
		caramelos += _caramelos - _caramelos.div(1/4)
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method dejarDeUsarMenosEfectivo(){
		const menosEfectivo = disfraces.min({disfraz => disfraz.nivelSusto()})
		disfraces.remove(menosEfectivo)
	}


}

object pancracio {
	var cantidadDeU = 4
	var property disfraces = mascaraDracula
	var property caramelos = 0
	
	method capacidadSusto(){
		return cantidadDeU + disfraces.nivelSusto()
	}
	method disfrazar(disfraz){
		disfraces = disfraz
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
	var property disfraces = mascaraDracula
	var property caramelos = 0
	
	method capacidadSusto(){
		return 5
	}
	method disfrazar(_disfraz){
		disfraces = _disfraz
	}
	method recibirCaramelos(_caramelos){
	caramelos += _caramelos
	}
}

