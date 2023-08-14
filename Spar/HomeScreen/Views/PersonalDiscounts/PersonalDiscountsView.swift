//
//  PersonalDiscountsView.swift
//  Spar
//
//  Created by Дмитрий Скок on 11.08.2023.
//

import SwiftUI

struct PersonalDiscountsView: View {
    @Binding var PersonalDiscountModels: [PersonalDiscountModel]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(PersonalDiscountModels) { personalDiscountModel in
                    PersonalDiscountView(personalDiscountModel: personalDiscountModel)
                }
            }
            .frame(height: 160)
        }
        .padding(.leading)
    }
}

struct PersonalDiscountsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDiscountView(personalDiscountModel:
                                PersonalDiscountModel(
                                    id: 1,
                                    name: "Мои скидки"
                                )
        )
    }
}
