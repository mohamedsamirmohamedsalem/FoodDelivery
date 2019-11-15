//
//  ResturantViewController.swift
//  FoodDelivery
//
//  Created by Mohamed on 10/27/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

extension ResturantViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "RestDetailsHeader") as! RestDetailsHeader
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section == 0){
            return 190
        } else {
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.foodData?[indexPath.row]
        let cell = tableView.dequeue() as FoodItemCell
        cell.configure(item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 0
        } else {
            return foodData?.count ?? 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}


