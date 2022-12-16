//
//  PhotoInfo.swift
//  API Project
//
//  Created by Dylan Martin on 12/6/22.
//

import Foundation

struct PhotoInfo: Codable {
    var url: URL
    var message: String
     var response: String
    
    enum CodingKeys: String, CodingKey {
        case url
        case message
        case response
    }
}
