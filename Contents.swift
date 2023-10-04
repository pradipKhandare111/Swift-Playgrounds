struct User
{
    var name : String
    var age : Int
    var email : String
    
    func printUserInfo() -> () {
        print("name is \(name) and age is \(age)")
    }
}

let res = User(name: "Pradip", age: 25, email: "pradipkhandare111@gmail.com")
//res.printUserInfo()
var res2 = res
res.printUserInfo()
res2.printUserInfo()

res2.name = "Viojay"
res2.age = 45
res2.printUserInfo()
res.printUserInfo()



//-------------------------------------------------------------------------------------------------


struct Employee
{
    let emp1: String = "Pradip"
    let emp2: String = "Tukaram"
    let emp3: String = "Raj"
    let emp4: String = "Shreyash"
}
struct Ename
{
    let emp1: String
    let emp2: String
    let emp3: String
    let emp4: String
}
let objEname = Ename(emp1: "Pradip", emp2: "Vijay", emp3: "raj", emp4: "Yghdhs")
let objStruct = Employee()

class EmployeeDetails
{
    func getNames() -> () {
        print(objStruct.emp1)
        print(objEname.emp4)
    }
}
let objClass = EmployeeDetails()
objClass.getNames()
