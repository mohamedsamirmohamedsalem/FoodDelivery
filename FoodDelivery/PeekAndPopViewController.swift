//
//  PeekAndPopViewController.swift
//  FoodDelivery
//
//  Created by Mohamed on 10/29/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit
import Kingfisher

class PeekAndPopViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    var data: Resturant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: data?.image ?? "") {            
            img.kf.setImage(with: url)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
