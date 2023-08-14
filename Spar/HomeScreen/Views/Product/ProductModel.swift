//
//  ProductModel.swift
//  Spar
//
//  Created by Дмитрий Скок on 12.08.2023.
//

import Foundation

struct ProductModel: Hashable, Identifiable {
    var id: Int
    var image: String
    var price: Double
    var action: String?
}
