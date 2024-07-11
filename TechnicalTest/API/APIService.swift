//
//  APIService.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    private init() {}
    
    func fetchProducts(completion: @escaping (Result<ResultModel, Error>) -> Void) {
        let urlString = "http://alb-dev-ekt-875108740.us-east-1.elb.amazonaws.com/apps/moviles/caso-practico/plp"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            do {
                let products = try JSONDecoder().decode(ResultModel.self, from: data)
                print("valor de products", products)
                completion(.success(products))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
