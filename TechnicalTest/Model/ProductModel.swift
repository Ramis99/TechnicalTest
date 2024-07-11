//
//  ProductModel.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import Foundation

struct ResultModel: Decodable {
    let resultProduct: ProductModel
    
    enum CodingKeys: String, CodingKey {
        case resultProduct = "resultado"
    }
}

struct ProductModel: Decodable {
    let category: String?
    let products: [ProductDetailModel]?
    enum CodingKeys: String, CodingKey {
        case category = "categoria"
        case products = "productos"
    }
}

struct ProductDetailModel: Decodable, Identifiable {
    let id: String
    let name: String
    let urlImage: [String]
    let regularPrice: Double
    let finalPrice: Double
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "nombre"
        case urlImage = "urlImagenes"
        case regularPrice = "precioRegular"
        case finalPrice  = "precioFinal"
    }
}
