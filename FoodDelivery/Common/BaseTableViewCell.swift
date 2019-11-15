//
//  BaseTableViewCell.swift
//  FoodDelivery
//
//  Created by Mohamed on 10/29/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure<T>(_ item: T?){
        guard let _ = item else { return }
    }

}
