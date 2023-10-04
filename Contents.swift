class Calculator
{

    var index : Int
    init(userDefinedValue: Int){
        index = userDefinedValue
    }

    func addTwoNumbers(first: Int, second : Int) -> Int {
        return first + second
    }

    func subsTwoNumbers(first: Int, second: Int) -> Int {
        return first - second
    }
    func multiTwoNumbers(first : Int, second : Int) -> Int {
        return first * second
    }
}
let obj = Calculator(userDefinedValue: 20)
print(obj.addTwoNumbers(first: 20, second: 10))
print(obj.multiTwoNumbers(first: 20, second: 5))
print(obj.subsTwoNumbers(first: 30, second: 10))

var obj1 = obj
print(obj1.addTwoNumbers(first: 10, second: 10))

//why classes are called reference type:
class Emp
{
    var eid : Int = 1
    var dname : String = "ios"
    
}
let objEmp = Emp()
print(objEmp.eid)

var objEmp2 = objEmp
objEmp2.dname = "java"
print(objEmp2.dname)
print(objEmp.dname)
