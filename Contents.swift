import UIKit

protocol Shape
{
    var area : Double { get }
}

class Rectangle: Shape
{
    var width: Double = 0
    var height: Double = 0
    
    var area: Double {
        return height * width
    }
}

class Square: Shape
{
    var width: Double = 0
    
    var area: Double {
        return pow(width, 2)
    }
}

class Circle: Shape
{
    var radius: Double = 0
    var area: Double {
        return Double.pi * radius * radius
    }
}

class Triangle: Shape
{
    var height: Double = 0
    var base: Double = 0
    
    var area: Double {
        return 1/2 * base * height
    }
}

let objectRectangle = Rectangle()
objectRectangle.width = 12
objectRectangle.height = 4


debugPrint("Area of rectangle is \(objectRectangle.area)")

let objectSquare = Square()
objectSquare.width = 10

debugPrint("Area of square is \(objectSquare.area)")

let objectCircle = Circle()
objectCircle.radius = 5

debugPrint("Area of circle is \(objectCircle.area)")

let objectTriangle = Triangle()
objectTriangle.base = 4
objectTriangle.height = 5

debugPrint("Area of triangle is \(objectTriangle.area)")
