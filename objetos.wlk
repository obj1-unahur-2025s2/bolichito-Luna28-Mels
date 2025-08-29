object rojo{
  method esFuerte() = true
}

object verde{
  method esFuerte() = true
}

object celeste{
  method esFuerte() = false
}

object pardo{
  method esFuerte() = false
}

object cobre{
  method esBrillante() = true
}

object lino {
  method esBrillante() = false 
}

object vidrio {
    method esBrillante() = true
}

object madera {
    method esBrillante() = false
}

object cuero {
    method esBrillante() = false
}

object remera{
  method color() = rojo
  method material() = lino
  method peso() = 800 
}

object muñeco{
  var peso = 1000 
  method material() = vidrio
  method color() = celeste
  method indicarPeso(nuevoPeso){
    peso = nuevoPeso
  }
}

object pelota{
  method material() = cuero
  method color() = pardo
  method peso() = 1300
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
}

object placa {
  var peso = 500
  var color = rojo 
  method material() = cobre
  method indicarPeso(nuevoPeso){
    peso = nuevoPeso
  }
  method indicarColor(nuevoColor){
    color = nuevoColor
  }
}

object rosa {
  var objeto = placa
  method objeto() = objeto
  method leGusta(algo){
    return algo.peso() <= 2000
  }
}

object estefania {
  method leGusta(algo){
    return algo.color().esFuerte() 
  }
}

object luisa {
  method leGusta(algo){
    return algo.material().esBrillante()
  }
}

object juan {
  method leGusta(algo) {
    return not algo.color().esFuerte() or (algo.peso() >= 1200 and algo.peso() <= 1800) // or (1200 <= algo.peso() <= 1800) // 
                                                                                       // or (algo.peso().between(1200, 1800))
  }
}

object bolichito {
  var vidriera = remera // como para poner algo
  var mostrador = pelota
  method objetoMostrador(nuevoObjeto){
    mostrador = nuevoObjeto
  }
  method objetoVidriera(nuevoObjeto){
    vidriera = nuevoObjeto
  }
  method esBrillante(){
    return vidriera.material().esBrillante() and mostrador.material().esBrillante()
  }
  method esMonocromatico(){
    return vidriera.color() == mostrador.color()
  }
  method estaEquilibrado() {
    return mostrador.peso() > vidriera.peso()
  }
  method exhibeObjeto(color){
    return vidriera.color() == color or mostrador.color() == color
  }
  method puedeMejorar(){
    return self.esMonocromatico() or not self.estaEquilibrado()
  }
  method puedeOfrecer(persona){
    return persona.leGusta(vidriera) or persona.leGusta(mostrador)
  }
}












