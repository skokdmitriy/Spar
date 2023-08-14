//
//  HomeView.swift
//  Spar
//
//  Created by Дмитрий Скок on 10.08.2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: HomeViewModel

    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                makeStoriesSection()
                makeDiscountsSection()
                makeBonusCardSection()
                makePersonalDiscountsSection()
                makeRecommendSection()
                makeSweetSection()
            }
        }
    }

    private func makeStoriesSection() -> some View {
        StoriesView(storyModels: $viewModel.storyModels)
    }

    private func makeDiscountsSection() -> some View {
        DiscountsView()
    }

    private func makeBonusCardSection() -> some View {
        BonusCardView()
    }

    private func makePersonalDiscountsSection() -> some View {
        PersonalDiscountsView(PersonalDiscountModels: $viewModel.personalDiscountModels)
    }

    private func makeRecommendSection() -> some View {
        VStack {
            Text("Рекомендуем")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ProductsView(productsModels: $viewModel.productModels)
                }
            }
        }
    }

    private func makeSweetSection() -> some View {
        VStack {
            Text("Сладкое настроение")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ProductsView(productsModels: $viewModel.productModels)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(HomeViewModel())
    }
}
