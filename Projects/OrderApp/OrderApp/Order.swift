//
//  Order.swift
//  OrderApp
//
//  Created by Dylan Martin on 12/20/22.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
