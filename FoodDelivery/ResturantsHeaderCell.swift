//
//  ResturantsHeaderCell.swift
//  FoodDelivery
//
//  Created by Mohamed on 10/24/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class ResturantsHeaderCell: UITableViewHeaderFooterView {
    @IBOutlet weak var containerView: UIView!
    
    lazy var cornerMask: CAShapeLayer = {
        let path = UIBezierPath(roundedRect: UIScreen.main.bounds, byRoundingCorners: [.topRight, .topLeft], cornerRadii: CGSize(width: 35, height: 35))
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        
        return maskLayer
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.mask = cornerMask
        
    }

    
}
