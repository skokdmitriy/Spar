//
//  ProductsView.swift
//  Spar
//
//  Created by Дмитрий Скок on 11.08.2023.
//

import SwiftUI

struct ProductsView: View {
    @Binding var productsModels: [ProductModel]

     var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(productsModels) { productModel in
                    ProductView(productModel: productModel)
                }
                .frame(height: 210)
            }
            .padding(.leading)
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(productModel:
                        ProductModel(
                            id: 1,
                            image: "images",
                            price: 99.99,
                            action: "Супер Цена"
                        )
        )
    }
}
