import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var property caramelos = 0
	var integrantes = [ ]
	method capacidadSusto(){
		return integrantes.fold(0,{acum, disfraz => acum + disfraz.capacidadSusto()})
	}
	method recibirCaramelos(_caramelos){
		caramelos += _caramelos
	}
	method entregarCaramelos(){
		var lider = integrantes.max({integrante => integrante.capacidadSusto()})
		lider.recibirCaramelos(caramelos)
	}
	method agregarIntegrantes(_integrantes){
		integrantes += _integrantes
	}
}

