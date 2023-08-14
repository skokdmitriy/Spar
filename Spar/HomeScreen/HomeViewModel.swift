//
//  HomeViewModel.swift
//  Spar
//
//  Created by Дмитрий Скок on 14.08.2023.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var storyModels: [StoryModel]
    @Published var personalDiscountModels: [PersonalDiscountModel]
    @Published var productModels: [ProductModel]

    init () {
        storyModels = [
            StoryModel(id: 1, name: "Мой спар"),
            StoryModel(id: 2, name: "Мы в соцсетях"),
            StoryModel(id: 3, name: "Напитки "),
            StoryModel(id: 4, name: "Акции"),
            StoryModel(id: 5, name: "Мы в соцсетях"),
            StoryModel(id: 6, name: "Напитки "),
            StoryModel(id: 7, name: "Акции")
        ]
        
        personalDiscountModels = [
            PersonalDiscountModel(id: 1, name: "Мои скидки"),
            PersonalDiscountModel(id: 2, name: "Абонемент на кофе"),
            PersonalDiscountModel(id: 3, name: "Карта в подарок"),
            PersonalDiscountModel(id: 4, name: "Доставка за 1 час")
        ]

        productModels = [
            ProductModel(id: 0, image: "images", price: 99.99),
            ProductModel(id: 1, image: "images", price: 100, action: "Супер Цена"),
            ProductModel(id: 2, image: "images", price: 100, action: "Удар по ценам"),
            ProductModel(id: 4, image: "images", price: 99.99)
        ]
    }
}
