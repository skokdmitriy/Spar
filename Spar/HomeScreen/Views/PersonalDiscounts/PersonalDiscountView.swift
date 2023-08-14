//
//  PersonalDiscountView.swift
//  Spar
//
//  Created by Дмитрий Скок on 12.08.2023.
//

import SwiftUI

struct PersonalDiscountView: View {
    var personalDiscountModel: PersonalDiscountModel

    var body: some View {
        VStack {
            Text(personalDiscountModel.name)
                .font(.caption)
                .fontWeight(.semibold)
                .lineLimit(2)
                .padding(10)
                .frame(width: 100, height: 150, alignment: .topLeading)
        }
        .background(Color.orange)
            .cornerRadius(20)
            .shadow(radius: 3)
    }
}

struct PersonalDiscountsCell_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDiscountView(personalDiscountModel:
                                PersonalDiscountModel(
                                    id: 1,
                                    name: "Абонемент на кофе"
                                )
        )
    }
}
