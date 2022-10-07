import UIKit

struct Person {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    
    func greeting() {
        print("Hello, my name is \(name), and I am \(age) years old.")
    }
    
    mutating func birthday() {
        age += 1
    }
}

var newPerson = Person(name: "John", age: 26, height: 4.9, weight: 250)
newPerson.greeting()
print(newPerson.greeting)
newPerson.birthday()
print(newPerson.age)


