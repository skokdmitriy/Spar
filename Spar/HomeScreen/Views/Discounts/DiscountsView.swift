//
//  DiscountsView.swift
//  Spar
//
//  Created by Дмитрий Скок on 10.08.2023.
//

import SwiftUI

struct DiscountsView: View {
    private let data = 1...5

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(data, id:\.self) { _ in
                    ZStack {
                        Color.red
                            .frame(width: 300, height: 150)
                            .cornerRadius(20)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

struct DiscountsView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountsView()
    }
}
