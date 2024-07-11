//
//  ProductsListView.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import SwiftUI

struct ProductsListView: View {
    @ObservedObject var viewModel : ProductsViewModel
    @Binding var showingProductList: Bool

    
    //    @ObservedObject var viewModel: ProductsViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.products?.resultProduct.products ?? []){ product in
                Button(action: {
                    viewModel.selectedProduct = product
                    showingProductList.toggle()
                }) {
                    ProductCardView(productDetail: product, category: viewModel.products!.resultProduct.category ?? "")
                }
            }
            .navigationTitle("Productos")
        }
    }
}

//#Preview {
//    ProductsListView()
//}
