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

object remera{
  method color() = rojo
  method material() = lino
  method peso() = 800 
}

object Rosa {
  method leGusta(algo){
    return algo.peso() <= 2000
  }
}
Rosa.leGusta(remera)




















