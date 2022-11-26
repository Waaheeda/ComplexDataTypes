import UIKit

var greeting = "Hello, playground"

var charas = Array<String>() //[string]()
charas.append("a")
charas.append("0z")
print(charas)
print(charas.sorted(by: { S1, S2 in
    S1 < S2
}))


var scores = Array<Int>()
scores.append(1)
scores.append(3)
print(scores.shuffled())
print(scores.reversed())
print(scores.sorted())
scores.append(6)
scores.append(7)
scores.append(8)
print(scores)
scores.remove(at: 3)
print(scores)

//Problems with Array -
//1. index doesnt tell you about value array holds so relying on index is not feasible
//2. no guarantee that array holds an element at desired index which leads to crash

//Solution to these problems - Dictionary
var employee = [
    "Name" : "Taylor Swift",
    //"Job" : "Singer",
    "Location" : "Nashvile",
    //"Job" : "Developer" ///duplicate key throws fatal error : Dictionary literal contains duplicate keys
]
print(employee["Location"]) //warning -:Expression implicitly coerced from 'String?' to 'Any'

///it prints optionals because value /key might be there or it might not

print(employee["Location",default: "DefaultValue"])

print(employee["keynothtere"]) ///prints nill  better than array crash
print(employee["Job",default: "Developer"]) //if key is not there default value is considered but its not added to dictionary
print(employee.count)
print(employee.description)
print(employee.capacity)
print(employee.filter{$0.key == "Name"}.description)
print(employee.popFirst()) //sorts interms of keys and then pops/removes

employee.removeAll()

print(employee.capacity)

var actors = Set<String>()
actors.insert("Zem")
actors.insert("Kareena")
actors.insert("Salman")
actors.insert("Zem") //doesnt change collection - set doesnt hv duplicates
print(actors) //sets are unordered
print(actors)
print(actors.sorted())
print(actors)

var colors = Set(["REd","Green","RED","RED","red"])
print(colors)
var numbs = Set([2,1,1,1,1,1,1,2])
print(numbs)

//enums
//range of possible values (of fixed data types) to avoid mistaking wrong value

enum WeekDay
{
    case Monday,Tuesday,Wednesday,Thursday,Friday
}
enum WeekendDay {
case Sunday , Saturday
}

var weekoff = WeekendDay.Saturday

print(WeekDay.Monday)

