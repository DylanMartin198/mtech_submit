import Foundation

struct Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
}
    
    //func saveToFile(emojis: [Emoji]) {
    //
    //}
    //func loadFromFile() {
    //
    //}
    let thing = Emoji(symbol: "😀", name: "Smile", description: "Smiley face", usage: "To show happiness")
    
    let dataObject: Data = try! JSONEncoder().encode(thing)
    
    let documentsDirectory: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    let saveFileURL: URL = documentsDirectory.appendingPathComponent("emojiData").appendingPathExtension("json")
    
//    do {
//        try dataObject.write(to: saveFileURL)
//    } catch {
//        print(error)
//    }
//
//    let data: Data = try! Data(contentsOf: saveFileURL)
//
//do {
//    let newthing: Emoji = try JSONDecoder().decode(Emoji.self, from: data)
//} catch {
//    print(error)



//let note1 = Note(title: "Note One",
//   text: "This is a sample note.", timestamp: Date())
//let note2 = Note(title: "Note Two", text: "This is another sample
//   note.", timestamp: Date())
//let note3 = Note(title: "Note Three", text: "This is yet another
//   sample note.", timestamp: Date())
//let notes = [note1, note2, note3]
//
//let documentsDirectory =
//   FileManager.default.urls(for: .documentDirectory,
//   in: .userDomainMask).first!
//let archiveURL =
//   documentsDirectory.appendingPathComponent("notes_test")
//   .appendingPathExtension("plist")
//
//let propertyListEncoder = PropertyListEncoder()
//let encodedNotes = try? propertyListEncoder.encode(notes)
//
//try? encodedNotes?.write(to: archiveURL,
//   options: .noFileProtection)
//
//let propertyListDecoder = PropertyListDecoder()
//if let retrievedNotesData = try? Data(contentsOf: archiveURL),
//    let decodedNotes = try?
//   propertyListDecoder.decode(Array<Note>.self,
//   from: retrievedNotesData) {
//    print(decodedNotes)
//}
