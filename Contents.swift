


//struct Item {
//    let name: String
//    let cost: Int
//    let quantity: Int
//    let totalPrice: Int
//
//    init(name : String, cost: Int, quantity: Int) {
//        self.name = name
//        self.cost = cost
//        self.quantity = quantity
//        self.totalPrice = (quantity * cost)
//    }
//}
//
//let objItem = Item(name: "iphone", cost: 120000, quantity: 3)
//
//print("product = \(objItem.name) and total Price = \(objItem.totalPrice)")



//class Item {
//    let name: String
//    let cost: Int
//    let quantity: Int
//    let totalPrice: Int
//
//    init(name: String, cost: Int, quantity: Int) {
//        self.name = name
//        self.cost = cost
//        self.quantity = quantity
//        self.totalPrice = cost * quantity
//    }
//}
//
//let objItem = Item(name: "Oppo", cost: 8989898, quantity: 5)
//
//print("product = \(objItem.name) and total Price = \(objItem.totalPrice)")



//struct Person{
//    var uidai: String
//
//
//    init?(uidai: String) {
//
//        if (uidai.count<12) {
//            return nil
//        }
//        self.uidai = uidai
//    }
//}
//
//let obj = Person(uidai: "2390111")
//print(obj?.uidai)

class Cake {
    var quantity : Int
    var name : String
    
    //Designated InIt
    init(quantity: Int, name: String) {
        self.quantity = quantity
        self.name = name
    }
    
    convenience init(name: String) {
        self.init(quantity: 1, name: name)
    }
}

var obj = Cake(name: "Happy Birthday")
print(obj.)













