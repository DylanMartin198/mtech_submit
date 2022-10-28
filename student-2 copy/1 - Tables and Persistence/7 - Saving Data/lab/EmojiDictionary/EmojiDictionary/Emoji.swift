import Foundation

struct Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
}
    
    func saveToFile(emojis: [Emoji]) {
        let thing = Emoji(symbol: "😀", name: "Smile", description: "Smiley face", usage: "To show happiness")
        
        let dataObject: Data = try! JSONEncoder().encode(thing)
        
        let documentsDirectory: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let saveFileURL: URL = documentsDirectory.appendingPathComponent("emojiData").appendingPathExtension("json")
        
    }
    func loadFromFile() {
        do {
            try dataObject.write(to: saveFileURL)
        } catch {
            print(error)
        }
        
        let data: Data = try! Data(contentsOf: saveFileURL)
        
    do {
        let newthing: Emoji = try JSONDecoder().decode(Emoji.self, from: data)
    } catch {
        print(error)
    }
}
    
    
