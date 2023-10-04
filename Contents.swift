import UIKit

struct LoanCalculator {
    var loanAmount: Int
    var rateOfInterest: Int
    var year: Int
    var simpleInterest: Int
    {
        get
        {
            return (loanAmount * rateOfInterest * year) / 100
        }
    }
}


let objLoanCalculator = LoanCalculator(loanAmount: 500000, rateOfInterest: 10, year: 3)
debugPrint(objLoanCalculator.simpleInterest)


struct Circle
{
    var radius: Double = 0
    var area: Double
    {
        get
        {
            return Double.pi * radius * radius
        }
        set(newValue)
        {
            radius = sqrt(newValue / Double.pi)
        }
    }
}

var objCircle = Circle()
objCircle.radius = 5
debugPrint(objCircle.area)

objCircle.area = 25
print(objCircle.radius)


struct Square
{
    var width : Double = 0
    var length : Double = 0
    var area : Double
    {
        get
        {
            return width * length
        }
        
        set(newValue)
        {
            width = (newValue / length)
            length = (newValue / width)
        }
    }
}

var objSquare = Square()
objSquare.width = 5
objSquare.length = 10
debugPrint("Area of the Square is \(objSquare.area)")
objSquare.area = 100
debugPrint("if area is \(objSquare.area) then width of the square is \(objSquare.width) and length of the square is \(objSquare.length)")
