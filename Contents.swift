protocol Car
{
    func applyBreak()
    func start()
    func stop()
    func hornSound()
}
class Swift: Car
{
    func applyBreak() {
        print("break applied for swift")
    }
    
    func start() {
        print("swift car is started")
    }
    
    func stop() {
        print("swift car is stopped")
    }
    
    func hornSound() {
        print("horn is also there in swift")
    }

}

class Audi: Car
{
    func applyBreak() {
        print("break applied for Audi")
    }
    
    func start() {
        print("Audi car is started")
    }
    
    func stop() {
        print("Audi car is stopped")
    }
    
    func hornSound() {
        print("horn is also there in Audi")
    }
    
}


class Person
{
    
    func driveCar(car: Car) -> () {
        car.start()
            print("i am driving swift car")
    }
}

let obj = Swift()
let obj1 = Audi()
let objPerson = Person()
objPerson.driveCar(car: obj1)
//obj.hornSound()
//obj1.hornSound()
