/** First Wollok example */
object olivia {
	var gradoConcentracion = 6
	method recibirMasajes() {
		gradoConcentracion += 3
	}
	method darseBanioDeVapor(){
		gradoConcentracion += 5
	}
	method discutir(){
		gradoConcentracion -= 1
	}
	method gradoDeConcentracion(){
		return gradoConcentracion
	}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var gramos = 55000
	method recibirMasajes() {
		esFeliz = true
	}
	method darseBanioDeVapor() {
		tieneSed = true
		gramos -= 500
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		tieneSed = true
		gramos += 250
	}
	method correr(){
		gramos -= 300
	}
	method verElNoticiero(){
		esFeliz = false
	}
	method estaPerfecto(){
		return esFeliz and not tieneSed and gramos.between(50000, 70000)
	}
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var nivelDeContractura = 2
	var pielGrasosa = false
	method recibirMasajes() {
		if((nivelDeContractura-2)<0){
			nivelDeContractura = 0
		}else{
			nivelDeContractura -= 2
		}
	}
	method darseBanioDeVapor() {
		pielGrasosa = false
	}
	method comerBigMac(){
		pielGrasosa = true
	}
	method bajarALaFosa(){
		nivelDeContractura += 1
		pielGrasosa = true
	}
	method jugarAlPaddle(){
		nivelDeContractura += 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}

object spa{
	method atender(persona){
		persona.recibirMasajes()
		persona.darseBanioDeVapor()
	}
}