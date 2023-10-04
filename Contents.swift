func addition(number: Int) -> Int{
    return number+1
}

func subs(number: Double) -> Double {
    return number+1
}

//var obj = addition(number: 12)
//print(obj)
//var obj1 = subs(number: 12.12)
//print(obj1)



func genercAddSubs<R:Strideable> (number: R) -> R {
    return number.advanced(by: 1)
}

var obj2 = genercAddSubs(number: 12)
var obj3 = genercAddSubs(number: 12.12)
print(obj2)
print(obj3)
