import UIKit

var carDictionary: [String: String] = ["Audi":"R8", "Nissan":"Rogue", "BMW":"X3"]
print(carDictionary["Audi"]!)
carDictionary["Audi"] = "R7"
print(carDictionary["Audi"]!)
