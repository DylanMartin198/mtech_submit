/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = [25.5, 30.2, 5, 7, "Car", "Dog", true, false]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for index in collection {
    if let integer = index as? Int {
        print("The integer has a value of \(integer)")
    } else if let double = index as? Double {
        print("The double has a value of \(double)")
    } else if let strings = index as? String {
        print("The string has a value of \(strings)")
    } else if let bools = index as? Bool {
        print("The bools have a value of \(bools)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var newDictionary: [String: Any] = ["Double": 30.5, "Integer": 5, "String": "Bob", "Bool": true]
print(newDictionary)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, value) in newDictionary {
    if let number = value as? Int {
        total = total + Double(number)
    } else if let number = value as? Double {
        total = total + number
    } else if value is String {
        total = total + Double(1)
    } else if let boolean = value as? Bool{
        if (boolean) {
            total = total + 2
        } else {
            total = total - 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0


/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */