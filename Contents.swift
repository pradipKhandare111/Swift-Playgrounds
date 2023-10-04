import UIKit

protocol A {
    func doSomething()
}

protocol B {
    //func printSomething()
    func doSomething()
}
class Employee: A, B
{
    func doSomething() {
        debugPrint("I am in doSomething")
    }
    
}

let obj = Employee()
obj.doSomething()
(obj as A).doSomething()
(obj as B).doSomething()
