//
//  ProductView.swift
//  Spar
//
//  Created by Дмитрий Скок on 12.08.2023.
//

import SwiftUI

struct ProductView: View {
    let productModel: ProductModel

    var body: some View {
        VStack(alignment: .leading) {
            if productModel.action != nil {
                VStack {
                    Text(productModel.action ?? "")
                        .foregroundColor(Color.white)
                        .padding([.vertical, .horizontal], 4.0)
                }
                .background(Color("superPrice"))
                .cornerRadius(10, corners: [.topLeft, .bottomRight, .topRight])
            }
            VStack {
                Spacer()

                Image(productModel.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)

                HStack {
                    Text("\(NSString(format:"%.2f", productModel.price)) ₽")
                        .bold()
                    Spacer()

                    Button {
                        print ("added to card")
                    } label: {
                        Image(systemName: "cart")
                    }
                    .padding(10)
                    .background(Color.green)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                }
                .padding(8)
            }
        }
        .frame(width: 150, height: 200)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(radius: 4)
        )
    }
}
struct ProductView_Previews: PreviewProvider {
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

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
