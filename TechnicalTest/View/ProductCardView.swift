//
//  ProductCardView.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import SwiftUI

struct ProductCardView: View {
    let productDetail: ProductDetailModel
    let category: String
        
        var body: some View {
            HStack {
                AsyncImage(url: URL(string: productDetail.urlImage[0])) { image in
                    image.resizable()
                         .frame(width: 50, height: 50)
                         .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
                
                VStack(alignment: .leading) {
                    Text(productDetail.name)
                        .font(.headline)
                        .foregroundStyle(.black)
                    Text("Precio: $\(productDetail.regularPrice, specifier: "%.2f")")
                        .font(.subheadline)
                    Text("Categoria: \(category)")
                        .font(.subheadline)
                }
            }
            
        }
}

#Preview {
    ProductCardView(productDetail: ProductDetailModel(id: "1", name: "Motocicleta", urlImage: [""], regularPrice: 10.0, finalPrice: 10.0), category: "Prueba")
}
