//
//  Representative.swift
//  API Project
//
//  Created by Dylan Martin on 12/7/22.
//

import Foundation

struct Representative: Codable {
    var name: String
    var party: String
    var link: URL
    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.party = try container.decode(String.self, forKey: try)
//        self.link = try container.decode(URL.self, forKey: try)
//        }
    }

struct SearchResponse: Codable {
    let results: [Representative]
}

