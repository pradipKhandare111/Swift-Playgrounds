class MyClass
{
    
    //function with parameter
    func printUserName(name : String) -> String {
       // let name : String = "Pradip"
        return "Pradip"
    }
    
    
    //function with default value
    func printlastname(lastname: String = "Khandare") -> String {
        return lastname
    }
    
    func minAndMax(array: [Int]) -> (minValiue: Int, maxValue: Int) {
        if (array.isEmpty) {return (0, 0)}
        
        var currentMinValue = array[0]
        var currentMaxValue = array[0]
        
        for value in array[1..<array.count]{
            if value < currentMinValue {
                currentMinValue = value
            } else if value > currentMaxValue {
                currentMaxValue = value
            }
        }
        
        return(currentMinValue, currentMaxValue)
    }
}

let obj = MyClass()
//obj.printUserName(name: "Pradip")
//obj.printlastname(lastname: "Kha")
let ans = obj.minAndMax(array: [10, 20, 25, 90, 100])
print("minimum value is \(ans.minValiue) and maximum value is \(ans.maxValue)")



 
