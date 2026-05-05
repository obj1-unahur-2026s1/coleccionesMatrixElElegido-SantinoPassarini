import pasajeros.*

object nave {
    const property pasajeros = [neo, morfeo, trinity]

    method subirALaNave(unPasajero) {
        if (pasajeros.contains(unPasajero)) {
            self.error("El pasajero ya está en la nave.")
        }
        pasajeros.add(unPasajero)
    }

    method bajarDeLaNave(unPasajero) {
        if (!pasajeros.contains(unPasajero)) {
            self.error("El pasajero no está en la nave.")
        }
        pasajeros.remove(unPasajero)
    }

    method cantidadDePasajeros() = pasajeros.size()

    method pasajeroDeMayorVitalidad() = pasajeros.max({c => c.vitalidad()})

    method estaElElegido() = pasajeros.any({c => c.esElElegido()})

    method chocar() {
        pasajeros.forEach({
            p => p.saltar()
            p.bajarseDeLaNave()
        })
        
    }

    
}