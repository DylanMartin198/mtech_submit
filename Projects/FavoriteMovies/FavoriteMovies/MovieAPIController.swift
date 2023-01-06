//
//  MovieAPIController.swift
//  FavoriteMovies
//
//  Created by Dylan Martin on 12/29/22.
//

 import Foundation

 struct SearchResponse: Codable {
     let movies: [APIMovie]

     enum CodingKeys: String, CodingKey {
         case movies = "Search"
     }
 }

enum Codingkeys: String, CodingKey {
    case title = "Title"
    case year = "Year"
    case imdbID
    case posterURl = "Poster"
}

 struct APIMovie: Codable {
     let title: String
     let year: String
     let imdbID: String
     let posterURL: URL
 }

 class MovieAPIController {

     let baseURL = URL(string: "http://www.omdbapi.com/")!
     let apiKey = "c73108a7"

     func fetchMovies(with searchTerm: String) async throws -> [APIMovie] {
         var searchURL = baseURL
         let searchItem = URLQueryItem(name: "s", value: searchTerm.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed))
         let apiKeyItem = URLQueryItem(name: "apiKey", value: apiKey)
         searchURL.append(queryItems: [searchItem, apiKeyItem])
         let (data, _) = try await URLSession.shared.data(from: searchURL)
         let searchResponse = try JSONDecoder().decode(SearchResponse.self, from: data)
         return searchResponse.movies
     }

 }
