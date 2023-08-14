//
//  BonusCardView.swift
//  Spar
//
//  Created by Дмитрий Скок on 10.08.2023.
//

import SwiftUI

struct BonusCardView: View {
    var body: some View {
        VStack {
            HStack() {
                Text("100")
                    .font(.title)
                    .bold()
                Text("бонусов")
                    .bold()
                    .padding(.top, 8)
            }
            .frame(width: 300, height: 100, alignment: .topLeading)
            .padding()
        }
        .background(Color.yellow)
        .cornerRadius(20)
        .shadow(radius: 3)
        .padding(.leading)
    }
}

struct BonusCardView_Previews: PreviewProvider {
    static var previews: some View {
        BonusCardView()
    }
}
