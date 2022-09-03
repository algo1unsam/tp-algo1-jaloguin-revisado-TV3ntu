import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(chico){
		if (tolerancia > chico.capacidadSusto)(){
			self.caramelosAEntregar(chico)
		}
		tolerancia =- 1
	}
	method caramelosAEntregar(chico){
		return tolerancia - chico.capacidadSusto()
	}
	method entregarCaramelos(caramelos,chico){
		chico.recibirCaramelos(caramelos)
	}

}
