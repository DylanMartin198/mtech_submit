import UIKit

class Person {
    var name: String
    var age: Int
    var weight: Double
    var favoriteColor: String

    init(name: String, age: Int, weight: Double, favoriteColor: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}


class student: Person {
    var currentClass: String
    var grade: String
    var gpa: Double
    
    init(currentClass: String, grade: String, gpa: Double, name: String, age: Int, weight: Double, favoriteColor: String) {
        self.currentClass = currentClass
        self.grade = grade
        self.gpa = gpa
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
        
    }
}
var newPerson = student(currentClass: "mobile development", grade: "A", gpa: 4.0, name: "John", age: 26, weight: 250, favoriteColor: "Red")
