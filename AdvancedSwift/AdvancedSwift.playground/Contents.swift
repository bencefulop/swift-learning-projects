import UIKit

var pizzaInInches: Int = 43 {
    willSet {}
    didSet {
        if pizzaInInches >= 18 {
            print("invalid size specified, pizza is set to 18 inches")
            pizzaInInches = 18
        }
    }
}


pizzaInInches = 8

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 6
