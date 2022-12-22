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
    var link: String
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.party = try container.decode(String.self, forKey: .party)
        self.link = try container.decode(String.self, forKey: .link)
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case party
        case link
    }
}

struct SearchResponse: Codable {
    let results: [Representative]
}

