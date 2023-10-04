import UIKit





var additionOfTwoNumbers:(Int, Int) -> Int = {
    (number1, number2) in
    return number1 + number2
   // return $0 + $1
}
let res = additionOfTwoNumbers(11, 11)
print(res)



var substractionOfTwoNumbers:(Int, Int) -> Int = {
    (num1, num2) in
    return num1 - num2
}
var resSubst = substractionOfTwoNumbers(20, 10)
print(resSubst)





var multiplicationOfTwoNumbers:(Int, Int) -> Int = {
    (num1, num2) in
    return num1 * num2
}
let objMul = multiplicationOfTwoNumbers(10, 10)
print(objMul)




var divisionOfTwoNumbers:(Double, Double) -> Double = {
    (num1, num2) in
    return num1 / num2
}
let objDiv = divisionOfTwoNumbers(10, 5)
print(objDiv)






