import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]
	method capacidadSusto(){
		return integrantes.sum({ chico => chico.capacidadSusto()})
	}
	method recibirCaramelos(_caramelos){
		self.lider().recibirCaramelos(_caramelos)
	}
	method lider(){
		return integrantes.max({integrante => integrante.capacidadSusto()})
	}
	method agregarIntegrantes(_integrantes){
		integrantes += _integrantes
	}
	method caramelos(){
		return integrantes.sum({ chico => chico.caramelos()})
	}
	method todosLosDisfraces() {
		return integrantes.map({ chico => chico.disfraces().asSet() }).flatten()
	}
	method disfracesRepetidos() {
		return self.todosLosDisfraces().filter({ x => self.todosLosDisfraces().occurrencesOf(x) > 1 })
	}
	method sacarseloATodos(disfraz) {
		integrantes.forEach({ chico => chico.quitarDisfraz(disfraz) })
	}
	method normaSinRepetidos() {
		self.disfracesRepetidos().forEach({ disfraz => self.sacarseloATodos(disfraz) })
	}
}


object barrio{
	var integrantes = []
	method chicosConMasCaramelos(cantidad) {
		return integrantes.sortedBy({ x, y => x.caramelos() > y.caramelos()}).take(cantidad)
	}
	
	method chicos(_integrantes) {
		integrantes += _integrantes
	}

	method algunoMuyAsustador() {
		return integrantes.any({ chico => chico.capacidadSusto() > 42 })
	}
	
}