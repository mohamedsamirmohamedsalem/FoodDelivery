//
//  CustomTabBar.swift
//  FoodDelivery
//
//  Created by Mohamed on 10/27/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

protocol CustomTabBarDelegate: class {
    func didPressOnButton(type: CustomTabBar.CustomTabBarButtons)
}

class CustomTabBar: UIView {
    enum CustomTabBarButtons: Int {
        case home
        case profile
    }
    
    weak var delegate: CustomTabBarDelegate?
    
    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var lineViewLeading: NSLayoutConstraint!
    
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var lineView: UIView!
    
    @IBOutlet weak var buttonsContainerView: UIView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("It is working")
        commonInit()
    }
    
    func commonInit(){
        if let nibView = Bundle.main.loadNibNamed("CustomTabBar", owner: self, options: nil)?.first as? UIView{
            nibView.frame = self.bounds
            self.addSubview(nibView)
            containerView = nibView
        }
    }
    
    @IBAction func didPressOnHome(_ sender: UIButton) {
        delegate?.didPressOnButton(type: .home)
        UIView.animate(withDuration: 0.4) {
            self.lineViewLeading.constant = sender.frame.origin.x + (sender.frame.width / 2)
            AnimationsFactory.animate(sender, animationType: .glow(from: 0.2))
            self.layoutIfNeeded()
        }
    }
    
    @IBAction func didPressOnPRofile(_ sender: UIButton) {
        delegate?.didPressOnButton(type: .profile)
        UIView.animate(withDuration: 0.4) {
            self.lineViewLeading.constant = sender.frame.origin.x + (sender.frame.width / 2)
            AnimationsFactory.animate(sender, animationType: .glow(from: 0.2))
            self.layoutIfNeeded()
        }

    }
    
}
