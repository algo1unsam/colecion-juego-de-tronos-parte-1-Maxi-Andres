// Daenerys
object dan{
    const property artefactos = #{}
    var property capacidad = 2
    const property listaHistorial = []

    // declaro los artefactos
    method artefactos(elemento) {
      if (artefactos.size() < 2) {
        artefactos.add(elemento)
        listaHistorial.add(elemento)
      }
      else return false
    }

    // limpio artefactos
    method borrar() {
      artefactos.clear()
    }

    // Saber los artefactos de Daenerys
    method cantidad() = artefactos.size()
    method objetos() = artefactos
    method objetoEspecial(elemento) = self.posesiones().contains(elemento)
    method posesiones() = artefactos + rocaDragon.baul()
    // = es lo mismo que return

    // Saber la historia de los encuentros con los artefactos
    method historial() = self.listaHistorial()

}
// RocaDragón
object rocaDragon {
    var property baul = #{} // = castillo

    // guardo artefactos en el castillo 
    method guardar() {
        baul.addAll(dan.artefactos())
        dan.borrar()
    }
}

// Objetos 
object espada {

}
object libro {
  
}
object collar {
  
}
object armadura {
  
}