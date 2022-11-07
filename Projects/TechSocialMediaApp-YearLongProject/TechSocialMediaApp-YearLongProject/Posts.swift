//
//  Posts.swift
//  TechSocialMediaApp-YearLongProject
//
//  Created by Dylan Martin on 11/2/22.
//

import Foundation

struct FamilyMember {
    var name: String
    var hobbys: String
    var imageName: String
    
    static var familyMembers: [FamilyMember] = [
        FamilyMember(name: "Dad", hobbys: "Likes fire", imageName: "John wick"),
        FamilyMember(name: "Mom", hobbys: "Likes Interior design", imageName: "Couch"),
        FamilyMember(name: "Sister", hobbys: "She is teaching english in India", imageName: "indianflag"),
        FamilyMember(name: "Brother1", hobbys: "Snowboards", imageName: "Snowboard"),
        FamilyMember(name: "Brother2", hobbys: "Is an artist", imageName: "mona lisa"),
        FamilyMember(name: "Me", hobbys: "Likes to play video games", imageName: "Seige")]
}
