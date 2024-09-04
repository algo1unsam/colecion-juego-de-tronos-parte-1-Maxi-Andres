object dany {
  const property artefactos = #{}
  var property capacidad = 2
  var property historial = []

  method encuentra(cosa) {
    if (artefactos.size() < capacidad){
      artefactos.add(cosa)
    } // si no tiene espacio no hace falta que devuelva algo que diga "dany no tiene espacio" esto es paradigma de objetos
    historial.add(cosa)
  }

  method guardar() {
    self.artefactos().clear()
  }

  method posesion() = self.artefactos() + rocaDragon.baul()
  method historia() = historial
}


object rocaDragon {
  var property baul = #{}

  method llegar() { // podrias poner como hace el profe llegar(lugar) y en vez de baul. pones lugar. es mas generico pero lo tendrias que poner en el objeto dany
    baul.addAll(dany.artefactos())
    dany.guardar()
  }
  
}


object espada {
  
}
object libro {
  
}
object collar {

}
object armadura {
  
}