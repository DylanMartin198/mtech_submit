import UIKit

// HTTP:
// Header - auth tokens if API requires it
// Body - used to post data to the url/database
// URL
// - query parameters

// create a URL
//let newDeckURL = URL(string: "https://www.deckofcardsapi.com/api/deck/new/")!
//
//func baseDrawCardUrl(with deckID: String) -> String {
//    "https://www.deckofcardsapi.com/api/deck/\(deckID)/draw"
//}
//func drawCardURL(deckID: String, cardCount: Int) -> URL {
//    let baseUrlString = baseDrawCardUrl(with: deckID)
//    var components = URLComponents(string: baseUrlString)!
//    components.queryItems = [
//        URLQueryItem(name: "count", value: "\(cardCount)")
//    ]
//    // Or you could do this ⌄
////    let searchDictionary = ["count": "\(cardCount)"]
////    components.queryItems = searchDictionary
////        .map({ URLQueryItem(name: $0.key, value: $0.value) })
//    return components.url!
//}
//
//
//Task {
//    // Call this first and copy the `deck_id` value
//    let response = try await URLSession.shared.data(from: newDeckURL)
//    // Paste the `deck_id` into the code below and comment out the line above to draw cards from that deck.
////    let url = drawCardURL(deckID: "rwpyiwt5ztjf", cardCount: 10)
////    let response = try await URLSession.shared.data(from: url)
//    // this will happen at some point in the future after the network call comes back.
//    if let jsonString = String(data: response.0, encoding: .utf8) {
//        print(jsonString)
//    }
//
//}

// Start of itunes Project

extension Data {
    func prettyPrintedJSONString() {
        guard
            let jsonObject = try? JSONSerialization.jsonObject(with: self, options: []),
            let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]),
            let prettyJSONString = String(data: jsonData, encoding: .utf8) else {
                print("Failed to read JSON Object.")
                return
        }
        print(prettyJSONString)
    }
}

var urlComponents = URLComponents(string: "https://itunes.apple.com/search")!
urlComponents.queryItems = [
    "term": "Apple",
    "media": "ebook",
    "attribute": "authorTerm",
    "lang": "en_us",
    "limit": "10"
].map { URLQueryItem(name: $0.key, value: $0.value) }

Task {
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)

    if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
        data.prettyPrintedJSONString()
    }
}

struct StoreItem: Codable {
    let name: String
    let artist: String
    var kind: String
    var description: String
    var artworkURL: URL
    
    enum CodingKeys: String, CodingKey {
        case name = "trackName"
        case artist = "artistName"
        case kind
        case description = "longDescription"
        case artworkURL = "artworkUrl100"
    }
    
    enum AdditionalKeys: String, CodingKey {
        case longDescription
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: CodingKeys.name)
        artist = try values.decode(String.self, forKey: CodingKeys.artist)
        kind = try values.decode(String.self, forKey: CodingKeys.kind)
        artworkURL = try values.decode(URL.self, forKey: CodingKeys.artworkURL)

        if let description = try? values.decode(String.self, forKey: CodingKeys.description) {
            self.description = description
        } else {
            let additionalValues = try decoder.container(keyedBy: AdditionalKeys.self)
            description = (try? additionalValues.decode(String.self, forKey: AdditionalKeys.longDescription)) ?? ""
        }
    }
}

struct SearchResponse: Codable {
    let results: [StoreItem]
}

enum StoreItemError: Error, LocalizedError {
    case itemsNotFound
}

func fetchItems(matching query: [String: String]) async throws -> [StoreItem] {
    var urlComponents = URLComponents(string: "https://itunes.apple.com/search")!
    urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
    
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
    
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw StoreItemError.itemsNotFound
    }
    
    let decoder = JSONDecoder()
    let searchResponse = try decoder.decode(SearchResponse.self, from: data)

    return searchResponse.results
}

let query = [
    "term": "Apple",
    "media": "ebook",
    "attribute": "authorTerm",
    "lang": "en_us",
    "limit": "10"
]

Task {
    do {
        let storeItems = try await fetchItems(matching: query)
        storeItems.forEach { item in
            print("""
            Name: \(item.name)
            Artist: \(item.artist)
            Kind: \(item.kind)
            Description: \(item.description)
            Artwork URL: \(item.artworkURL)


            """)
        }
    } catch {
        print(error)
    }
}
