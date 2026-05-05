import nave.*

object neo {

    var energia = 100

    method esElElegido() = true

    method saltar() {
        energia /= 2
    }

    method vitalidad() = energia * 0.1

    method subirseALaNave() {
        nave.subirALaNave(self)
    }

    method bajarseDeLaNave() {
        nave.bajarDeLaNave(self)
    }
}

object morfeo {

    var vitalidad = 8

    var estaCansado = false

    method esElElegido() = false

    method saltar() {
        estaCansado = !estaCansado
        vitalidad = 0.max(vitalidad - 1) 
    }

    method vitalidad() = vitalidad

    method subirseALaNave() {
        nave.subirALaNave(self)
    }

    method bajarseDeLaNave() {
        nave.bajarDeLaNave(self)
    }
}

object trinity {

    method esElElegido() = false

    method vitalidad() = 0

    method saltar () {} // Simula el salto

    method subirseALaNave() {
        nave.subirALaNave(self)
    }

    method bajarseDeLaNave() {
        nave.bajarDeLaNave(self)
    }
}