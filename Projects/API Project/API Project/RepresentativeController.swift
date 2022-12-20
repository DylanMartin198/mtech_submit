//
//  RepresentativeController.swift
//  API Project
//
//  Created by Dylan Martin on 12/7/22.
//

import Foundation
import UIKit

class StoreItemController {
    enum StoreItemError: Error, LocalizedError {
        case itemsNotFound
        case imageDataMissing
    }
    
    func fetchItems(matching query: [String: String]) async throws -> [Representative] {
        var urlComponents = URLComponents(string: "https://whoismyrepresentative.com/getall_mems.php")!
//    https://whoismyrepresentative.com/getall_mems.php?zip=31023&output=json
        
        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw StoreItemError.itemsNotFound
        }
        
        let decoder = JSONDecoder()
        let searchResponse = try decoder.decode(SearchResponse.self, from: data)

        return searchResponse.results
    }
    
    
    
    func fetchImage(from url: URL) async throws -> UIImage {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw StoreItemError.imageDataMissing
        }

        guard let image = UIImage(data: data) else {
            throw StoreItemError.imageDataMissing
        }
        
        return image
    }
}
