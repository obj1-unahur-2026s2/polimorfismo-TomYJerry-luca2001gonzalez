object tom {
    var energia = 50
    
    method energia() = energia

    method velocidadMaxima(){
        return 5 + energia / 10
    }
    method estaFeliz(){
        return energia >= 50
    }
    method comer(raton){
        energia = energia + 12 + raton.peso()
    }
    method correr(metros){
        energia = energia - (metros / 2)
        //ya sé que por ahí es al pedo el paréntesis pero queda
        //mejor entendida la fórmula así
    }
    method puedeCazar(metros){
        return energia >= (metros / 2)
    }
    method cazar(raton,metros){
        if (self.puedeCazar(metros)){
            self.correr(metros)
            self.comer(raton)
        }
    }
}

object jerry {
    var edad = 2
    method peso() = edad * 20
    method cumplirAnios() {
        edad = edad + 1
    }
}

object nibbles {
    method edad() = 1
    method peso() = 35
}

object perez {
    method edad() = 15
    method peso() = 50
}