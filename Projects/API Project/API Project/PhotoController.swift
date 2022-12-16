//
//  PhotoViewController.swift
//  API Project
//
//  Created by Dylan Martin on 12/6/22.
//

import Foundation
import UIKit


protocol PhotoControllerDelegate: AnyObject {
    func fetchPhotoInfo()
    func fetchImage(from url: URL)
}

class PhotoController {
    
    weak var delegate: PhotoControllerDelegate?
    
    enum PhotoInfoError: Error, LocalizedError {
        case itemNotFound
        case imageDataMissing
    }
    
static func fetchPhotoInfo() async throws -> PhotoInfo {
    var urlComponents = URLComponents(string:
       "https://dog.ceo/api/breeds/image/random")!
    urlComponents.queryItems = [
//        "api_key": "DEMO_KEY",
        "message": "https://images.dog.ceo/breeds/mastiff-bull/n02108422_3985.jpg",
         "status": "success"
        
    ].map { URLQueryItem(name: $0.key, value: $0.value) }
    
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
