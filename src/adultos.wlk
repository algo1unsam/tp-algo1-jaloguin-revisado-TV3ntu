import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(chico){
		tolerancia =- 1
	}
	method caramelosAEntregar(chico){
		chico.recibirCaramelos(tolerancia - chico.capacidadSusto())
	}

}
