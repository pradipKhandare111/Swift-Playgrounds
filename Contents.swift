import UIKit

protocol Shape {
    func calculateArea() -> Double
}


class Rectangle: Shape
{
    
    let width: Double
    let height: Double
    
    init(_width: Double, _height: Double)
    {
        width = _width
        height = _height
    }
    
    func calculateArea() -> Double {
        return width * height
    }
    
}

class Circle: Shape
{
    
    let radius: Double
    
    init(_radius: Double)
    {
        radius = _radius
    }
    
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
    
}

class Triangle: Shape
{
    
    let base: Double
    let height: Double
    
    init(_base: Double, _height: Double)
    {
        base = _base
        height = _height
    }
    
    func calculateArea() -> Double {
        return 1/2 * base * height
    }
    
}

class AreaCalculator
{
    func area(shape: Shape) -> Double {
        return shape.calculateArea()
    }
}


let objectAreaCalculator = AreaCalculator()
let objectRectangle = Rectangle(_width: 1.34, _height: 2)
let objectCircle = Circle(_radius: 12)
let objectTriangle = Triangle(_base: 8, _height: 5)


debugPrint("Area = \(objectAreaCalculator.area(shape: objectCircle))")

