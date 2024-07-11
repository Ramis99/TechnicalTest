//
//  ContentView.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ProductsViewModel()
    @State private var showingProductList = false
    
    var body: some View {
        VStack {
            Button(action: {
                viewModel.fetchProducts()
                showingProductList.toggle()
            }) {
                Text("Mostrar productos")
            }
            .buttonStyle(CustomButtonStyle())
            
            
            .sheet(isPresented: $showingProductList, content: {
                ProductsListView(viewModel: viewModel, showingProductList: $showingProductList)
            })
            if let selectedProduct = viewModel.selectedProduct {
                ProductDetailView(product: selectedProduct, category: viewModel.products?.resultProduct.category ?? "")
            }
        }
       
    }
}

#Preview {
    ContentView()
}
