import UIKit

struct Parts
{
    let name: String?
    let price: Double?
}

class ComputerParts
{
    func findParts(name : String) -> Parts? {
        if(name == "keyboard"){
            return Parts(name: "some keyboards", price: 50000)
        } else if(name == "mouse"){
            return Parts(name: "some mouse", price: 8980)
        }
        return nil
    }
}


let obj = ComputerParts()
//optional binding
if let parts = obj.findParts(name: "keyboard"){
    if let partPrice = parts.price{
        debugPrint(partPrice)
    }
}

//optional chaining
if let parts = obj.findParts(name: "mmmm")?.price
{
    debugPrint(parts)
}else {
    debugPrint("no parts found")
}




