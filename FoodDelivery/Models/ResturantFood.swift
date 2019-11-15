//
//  ResturantFood.swift
//  FoodDelivery
//
//  Created by Mohamed Samir on 10/29/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation

struct ResturantFood: Codable {
    let id: Int?
    let title: String?
    let image: String?
    let price: Int?
    let currency: String?
    var quantity: Int?
    
    func formattedPrice() -> String {
        return "\(price ?? 0) \(currency ?? "")"
    }
    
}

extension ResturantFood: Equatable {
    static func ==(lhs: ResturantFood, rhs: ResturantFood) -> Bool {
        return lhs.id == rhs.id
    }
}
