//
//  ViewController.swift
//  FoodDelivery
//
//  Created by Mohamed Samira on 10/24/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit
import SkeletonView

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let section = HomeSections.allCases[section]
        switch section {
        case .topItems:
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CityHeaderCell") as! CityHeaderCell
        print("table \(header.bounds)")
        
        return header
        case .restData:
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ResturantsHeaderCell") as! ResturantsHeaderCell
            print("table \(header.bounds)")
            return header
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let section = HomeSections.allCases[section]
        switch section {
        case .topItems:
            return 60
        case .restData:
        return viewModel.Resturants != nil ? 100 : 0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = HomeSections.allCases[indexPath.section]
        if case .restData = section {
            let item = viewModel.Resturants?[indexPath.row]
            let view = self.storyboard?.instantiateViewController(withIdentifier: "ResturantViewController") as! ResturantViewController
            view.data = item
            self.navigationController?.pushViewController(view, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = HomeSections.allCases[indexPath.section]
        switch section {
        case .topItems:
            let item = viewModel.data?.types
            let cell = tableView.dequeue() as RestTypesCell
            cell.items = item
            
            cell.didSelectItem = { [weak self] item in
                self?.didSelectItem(item)
            }
            return cell
        case .restData:
            let item = viewModel.Resturants?[indexPath.row]
            let cell = tableView.dequeue() as ResturantCell
            cell.configure(item)
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = HomeSections.allCases[section]
        switch section {
        case .topItems:
            return 1
        case .restData:
            return viewModel.Resturants?.count ?? 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return HomeSections.allCases.count
    }
    
    
}
