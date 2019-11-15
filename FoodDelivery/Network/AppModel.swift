//
//  ErrorsModel.swift
//  FoodDelivery
//
//  Created by Mohamed Samir on 10/28/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation

struct AppModel<T: Decodable>: Decodable {
    var status: statusEnum?
    var data: T?
    var message: String?
    
    enum statusEnum: String, Decodable {
        case fail = "fail"
        case success = "success"
    }
}
