//
//  ViewController.swift
//  FoodDelivery
//
//  Created by Mohamed on 10/24/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

extension ViewController: CustomTabBarDelegate {
    func didPressOnButton(type: CustomTabBar.CustomTabBarButtons) {
        switch type {
        case .home:
            print("pressed home")
        case .profile:
            print("pressed profile")
        }
    }
}
