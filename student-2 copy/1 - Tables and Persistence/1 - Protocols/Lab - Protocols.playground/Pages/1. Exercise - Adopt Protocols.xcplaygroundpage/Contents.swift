/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
import Foundation

class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age && lhs.description == rhs.description
    }
    
    var description: String
    var name: String
    var age: Int
    
    init(name: String, age: Int, description: String){
        self.name = name
        self.age = age
        self.description = description
    }
}
var first = Human(name: "John", age: 25, description: "Dark Haired")
var second = Human(name: "Bob", age: 36, description: "Blonde Haired")

//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(first)
print(second)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
print(first != second)

//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
var third = Human(name: "Billy", age: 18, description: "Brown Hair")
var fourth = Human(name: "Kolby", age: 26, description: "Brown Hair")
var fifth = Human(name: "Timmy", age: 24, description: "Black Hair")

let people = [first, second, third, fourth, fifth]

let sortedPeople: [Human] = people.sorted(by: <)

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.

let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(first),
   let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
