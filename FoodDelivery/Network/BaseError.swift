//
//  BaseError.swift
//  FoodDelivery
//
//  Created by Mohamed Samir on 10/28/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation

enum BaseError: Error {
//    case homeFailure
    case incorrectUsername
    case incorrectPassword
    case APIFailure
    case other(text: String)
    
    
    var MyDescription: String {
        switch self {
        case .APIFailure:
            return "Sorry, loading home failed"
        case .incorrectUsername:
            return "Sorry, incorrect username"
        case .incorrectPassword:
            return "Sorry, Incorrect Password"
        case .other(let text):
            return text
        }
    }
}
