//
//  Resturant.swift
//  FoodDelivery
//
//  Created by Mohamed Samir on 10/28/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation
// MARK: - ResturantElement
struct Resturant: Codable {
    let id: Int?
    let title: String?
    let image: String?
    let deliveryTime: String?
    let rating: Double?
    let ratingCount: Int?
    let genres: [String]?
    let liked, isExculsive: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, title, image
        case deliveryTime = "delivery_time"
        case rating
        case ratingCount = "rating_count"
        case genres, liked
        case isExculsive = "is_exculsive"
    }
}
