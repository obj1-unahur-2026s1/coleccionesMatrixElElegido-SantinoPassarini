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

    method pasajeroDeMenorVitalidad() = pasajeros.min({c => c.vitalidad()})

    method estaElElegido() = pasajeros.any({c => c.esElElegido()})

    method chocar() {
        self.saltan(pasajeros)
        pasajeros.forEach({
            p => p.bajarseDeLaNave()
        })
    }

    method saltan(unaLista) {
        unaLista.forEach({o => o.saltar()})
    }

    method removerAlgunos(unaLista) {
        pasajeros.removeAll(unaLista)
    }

    method estaEquilibrada() = !pasajeros.any({c => self.pasajeroDeMayorVitalidad().vitalidad() > self.pasajeroDeMenorVitalidad().vitalidad() * 2})
    
    method acelerar() {
        self.saltan(self.noElegidos())
    }

    method noElegidos() {
        return pasajeros.filter({c => !c.esElElegido()})
    }

    method vitalidadesDePasajeros() {
        return pasajeros.map({p => p.vitalidad()})
    }

    method ordenarDeMenorVitalidadAMayor() {
        pasajeros.sortBy({
            p1, p2 => p1.vitalidad() < p2.vitalidad()
        })
    }

    method cualquierPasajero() = pasajeros.anyOne()
}