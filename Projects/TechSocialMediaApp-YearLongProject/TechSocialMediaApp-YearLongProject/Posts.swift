//
//  Posts.swift
//  TechSocialMediaApp-YearLongProject
//
//  Created by Dylan Martin on 11/2/22.
//

import Foundation
import UIKit

struct Posts {
    var comment: String
    var imageName: String
    
    static var posts: [Posts] = [
        Posts(comment: "Unit", imageName: "GigaChad"),
        Posts(comment: "Average andriod user", imageName: "Andriod meme"),
        Posts(comment: "Me", imageName: "DeveloperMeme"),
        Posts(comment: "Darth Vader", imageName: "DarthVader"),
        Posts(comment: "Favorite Lift", imageName: "BenchPress"),
        Posts(comment: "Favorite food", imageName: "Chicken"),
        Posts(comment: "Best candy", imageName: "SnickersBar"),
        Posts(comment: "I can do a 360", imageName: "Snowboarding"),
        Posts(comment: "I like ice cream", imageName: "IceCream"),
        Posts(comment: "Favorite summer activity", imageName: "Wakesurfing")]
}
