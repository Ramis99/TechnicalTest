//
//  ProductDetailView.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductDetailModel
    let category: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.urlImage[0])) { image in
                image.resizable()
                     .frame(width: 200, height: 200)
            } placeholder: {
                ProgressView()
            }
            
            Text(product.name)
                .font(.largeTitle)
            Text("Precio: $\(product.finalPrice, specifier: "%.2f")")
                .font(.title)
            Text("Categoria: \(category)")
                .font(.title2)
        }
        .padding()
    }
}

//#Preview {
//    ProductDetailView()
//}
