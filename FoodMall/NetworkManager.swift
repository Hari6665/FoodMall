//
//  NetworkManager.swift
//  FoodMall
//
//  Created by Harikrishnan K M on 12/09/23.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
    private let foodURL = baseURL + "appetizers"
    
    private init(){}
    
    func getFood(completed: @escaping (Result<[FoodMallModel], FOError>) -> Void){
        guard let url = URL(string: foodURL) else {
            completed(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {  data, response, error in
            if let _ = error {
                completed(.failure(.unableTocomplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            do {
                let decoder = JSONDecoder()
                let decodedeResponse = try decoder.decode(FoodMallResponse.self, from: data)
                completed(.success(decodedeResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
