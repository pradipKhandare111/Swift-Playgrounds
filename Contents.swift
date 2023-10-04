import UIKit

struct Order
{
    let amount: Double
    let description: String
    let tax: Double
    let created_by: String
}


protocol OrderStorage
{
    func saveOrder(order: Order)
}

class Handler
{
    private let _orderStorage: OrderStorage
    
    init(storage: OrderStorage) {
        _orderStorage = storage
    }
    
    func saveOrder(order: Order)
    {
        guard order.amount != 0 else {
            debugPrint("save operation failed, Order amount should be greater than 0")
            return
        }
        
        
        _orderStorage.saveOrder(order: order)
    }
}



//Low level class
class orderDatabaseOperations: OrderStorage
{
    func saveOrder(order: Order) {
        debugPrint("order: \(order.description) of amount \(order.amount) was saved")
    }
}

class orderAPIOperations: OrderStorage
{
    func saveOrder(order: Order) {
        debugPrint("order: \(order.description) of amount \(order.amount) was saved")
    }
}
let objHandlerDatabase = Handler(storage: orderDatabaseOperations())
objHandlerDatabase.saveOrder(order: (Order(amount: 30, description: "order description", tax: 2, created_by: "Pradip")))


let objectHandlerAPI = Handler(storage: orderAPIOperations())
objectHandlerAPI.saveOrder(order: Order(amount: 2323, description: "order description", tax: 3, created_by: "Pradip Khandare"))
