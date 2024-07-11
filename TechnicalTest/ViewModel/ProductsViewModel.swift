//
//  ProductsViewModel.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import Foundation

class ProductsViewModel: ObservableObject {
    @Published var products: ResultModel?
    @Published var selectedProduct: ProductDetailModel?
    
    func fetchProducts() {
        APIService.shared.fetchProducts { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let products):
                    self.products = products
                case .failure(let error):
                    print("Error fetching products: \(error)")
                }
            }
        }
    }
}
