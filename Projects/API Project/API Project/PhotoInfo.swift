//
//  PhotoInfo.swift
//  API Project
//
//  Created by Dylan Martin on 12/6/22.
//

import Foundation

struct PhotoInfo: Codable {
    var message: URL
    
    enum CodingKeys: String, CodingKey {
        case message
    }
}
