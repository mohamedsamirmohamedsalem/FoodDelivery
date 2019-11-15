//
//  NetworkClient.swift
//  FoodDelivery
//
//  Created by Mohamed Samir on 10/28/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation
import Alamofire


protocol NetworkClientProtocol {
    typealias onSuccess<T> = ( (T) -> ())
    typealias onFailure = ((_ error: Error) -> ())

    func performRequest<T>(_ object: T.Type, router: APIRouter, success: @escaping onSuccess<T>, failure: @escaping onFailure) where T:Decodable
}

class NetworkClientNew: NetworkClientProtocol {
    
    
    func performRequest<T>(_ object: T.Type, router: APIRouter, success: @escaping onSuccess<T>, failure: @escaping onFailure) where T:Decodable {
        Alamofire.request(router).responseJSON { (response) in
            // ALAMOFIRE ERROR CHECK
//            response.response?.statusCode
            if let error = response.error{
                failure(error)
                return
            }
            // PROCESS..
            do {
                let data = try JSONDecoder().decode(AppModel<T>.self, from: response.data!)
                if(data.status == .fail){
                    failure(BaseError.other(text: data.message ?? ""))
                    return
                } else {
                    if let datax = data.data {
                        success(datax)
                    }
                }
            } catch let error{
                failure(error)
            }
        }
    }
    
}
