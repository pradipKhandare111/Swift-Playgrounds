import UIKit

enum BikeError: Error {
    case inSufficientPetroilQuantity(neededPetrolQuantiy: Int)
    case insufficientAgedBike(neededAge: Int)
    case notClearVision(neededClearVision: Bool)
    case insufficientAirInTyre(neededAir: Int)
}
struct Bike {
    
    func startPicnic(petrolQuantity: Int) throws -> String {
        if(petrolQuantity < 4){
            //throw an error
            throw BikeError.inSufficientPetroilQuantity(neededPetrolQuantiy: 4)
            
        }else {
            return "let the picnic begin"
        }
    }
    
    func rideBike(age: Int) throws -> String {
        if age < 18 {
            throw BikeError.insufficientAgedBike(neededAge: 18)
        }else {
            return "you can ride the bike brother"
        }
    }
    
    func toRideBike(vision: Bool) throws -> String {
        if vision == false {
            throw BikeError.notClearVision(neededClearVision: true)
        } else
        {
            return "You are the perfect guy to ride bike"
        }
    }
    
    func checkTyre(air: Int) throws -> String {
        if air < 40 {
            throw BikeError.insufficientAirInTyre(neededAir: 40)
        } else {
            return "You are ready to go man"
        }
    }
}

let obj = Bike()

do {
    try obj.startPicnic(petrolQuantity: 3)
}catch BikeError.inSufficientPetroilQuantity(let neededPetrolQuantiy) {
    debugPrint("error occured because of insufficient petrol quantity, The needed petrol quantiy is \(neededPetrolQuantiy)")
}

do{
    try obj.rideBike(age: 17)
}catch BikeError.insufficientAgedBike(let neededAge){
    debugPrint("Error occured because of your age is under \(neededAge)")
}


do {
    try obj.toRideBike(vision: false)
}catch BikeError.notClearVision(_){
    debugPrint("Error occured because of you have not clear vision")
}

do{
    try obj.checkTyre(air: 38)
}catch BikeError.insufficientAirInTyre(let neededAir){
    debugPrint("available air in your tyre is less, needed air is \(neededAir)")
}





