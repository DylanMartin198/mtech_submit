

//:  Create a variable instance of `GPS` called `somePlace`. It should be initialized without supplying any arguments. Print out the latitude and longitude of `somePlace`, which should be 0.0 for both.
struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

var somePlace = GPS()
//:  Change `somePlace`'s latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
print(somePlace.latitude)
print(somePlace.longitude)

somePlace.latitude = 51.514004
somePlace.longitude = 0.125226

print(somePlace.latitude)
print(somePlace.longitude)
//:  Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
struct Book {
    let title: String = "Fabelhaven"
    let author: String = "Brandon Mull"
    let pages: Int = 400
    let price: Double = 20.0
}

//:  Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
var favoriteBook = Book()

print(favoriteBook.title)
print(favoriteBook.author)
print(favoriteBook.pages)
print(favoriteBook.price)
/*:
page 1 of 10  |  [Next: App Exercise - Workout Tracking](@next)
 */
