//
//  Constants.swift
//  FoodDelivery
//
//  Created by Mohamed Samir on 10/28/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation

struct Constants {
    static let baseURL = "http://i0sa.com/food/"
}


enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/x-www-form-urlencoded; charset=utf-8"
    case accept = "*/*"
    case acceptEncoding = "gzip;q=1.0, compress;q=0.5"
}
