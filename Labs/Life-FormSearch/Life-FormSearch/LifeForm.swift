//
//  LifeForm.swift
//  Life-FormSearch
//
//  Created by Dylan Martin on 1/20/23.
//

import Foundation

protocol APIRequest {
    associatedtype Response
    
    var urlRequest: URLRequest { get }
    func decodeResponse(data: Data) throws -> Response
}
enum APIRequestError: Error {
    case itemNotFound
}
func sendRequest<Request: APIRequest>(_ request: Request) async
   throws -> Request.Response {
    let (data, response) = try await URLSession.shared.data(for:
       request.urlRequest)
       
    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else {
        throw APIRequestError.itemNotFound
    }
       
    let decodedResponse = try request.decodeResponse(data: data)
    return(decodedResponse)
}

struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }
}

struct SearchAPIRequest: APIRequest {
    var apiKey: String
    
    var urlRequest: URLRequest {
        var urlComponents = URLComponents(string:
           "https://eol.org/api/search/1.0.json?q=Yellow%20Tang&page=1")!
        urlComponents.queryItems = [URLQueryItem(name: "date",
           value: "2021-07-15"),
                                    URLQueryItem(name: "api_key",
                                       value: apiKey)]
        
        return URLRequest(url: urlComponents.url!)
    }
    
    func decodeResponse(data: Data) throws -> PhotoInfo {
        let photoInfo = try JSONDecoder().decode(PhotoInfo.self,
           from: data)
        return photoInfo
    }
}


struct PagesAPIRequest: APIRequest {
    var apiKey: String
    
    var urlRequest: URLRequest {
        var urlComponents = URLComponents(string:
           "https://eol.org/api/pages/1.0/46577088.json?taxonomy=true&images_per_page=1&language=en")!
        urlComponents.queryItems = [URLQueryItem(name: "date",
           value: "2021-07-15"),
                                    URLQueryItem(name: "api_key",
                                       value: apiKey)]
        
        return URLRequest(url: urlComponents.url!)
    }
    
    func decodeResponse(data: Data) throws -> PhotoInfo {
        let photoInfo = try JSONDecoder().decode(PhotoInfo.self,
           from: data)
        return photoInfo
    }
}
