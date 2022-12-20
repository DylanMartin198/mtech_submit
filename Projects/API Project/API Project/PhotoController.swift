//
//  PhotoViewController.swift
//  API Project
//
//  Created by Dylan Martin on 12/6/22.
//

import Foundation
import UIKit




class PhotoController {
    
    
    enum PhotoInfoError: Error, LocalizedError {
        case itemNotFound
        case imageDataMissing
    }
    
static func fetchPhotoInfo() async throws -> PhotoInfo {
    let urlComponents = URLComponents(string:
       "https://dog.ceo/api/breeds/image/random")!
    
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
    
    guard let httpResponse = response as? HTTPURLResponse,
            httpResponse.statusCode == 200 else {
        throw PhotoInfoError.itemNotFound
    }
    
    let jsonDecoder = JSONDecoder()
    let photoInfo = try jsonDecoder.decode(PhotoInfo.self, from: data)
    return(photoInfo)
}

   static func fetchImage(from url: URL) async throws -> UIImage {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw PhotoInfoError.imageDataMissing
        }
        
        guard let image = UIImage(data: data) else {
            throw PhotoInfoError.imageDataMissing
        }
        
        return image
    }
}
