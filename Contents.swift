class Person
{
    var fName: String = String()
    var mName: String?
    var lName: String = String()
    
    func printPersonInfo() -> () {
        
        if(mName != nil){
            print("\(fName) \(mName!) \(lName)") //force execution
        } else {
            print("\(fName) \(lName)")
        }
           
    }
}
let obj = Person()
obj.fName = "Pradip"
//obj.mName = "Ramesh"
obj.lName = "Khandare"

obj.printPersonInfo()
