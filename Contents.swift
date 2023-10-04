import UIKit

func displayName(name: String?) -> () {
    
   // assert(name != nil)
    
//    if(name != nil){
//        print("name = \(name!)")
//    } else {
//        print("name is empty")
//    }
    guard name != nil, isValid(name: name!) else {
        return
    }
    print("I am executed after guard execution")
}
//displayName(name: nil)


func isValid(name: String) -> Bool {
    
    return name.count == 4 ? true : false
}

print(isValid(name: "pradip"))


