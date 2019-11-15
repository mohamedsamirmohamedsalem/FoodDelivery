//
//  ResturantCell.swift
//  FoodDelivery
//
//  Created by Mohamed on 10/24/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class ResturantCell: UITableViewCell {
    @IBOutlet weak var restTitle: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var img: UIImageView!

    @IBOutlet weak var FoodGenreCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        FoodGenreCollectionView.delegate = self
        FoodGenreCollectionView.dataSource = self
        FoodGenreCollectionView.registerCellNib(cellClass: GenreCell.self)
        selectionStyle = .none
        // Initialization code
    }
    
    func configure(_ item: Resturant?){
        guard let item = item else { return }
        restTitle.text = item.title
        ratingLabel.text = "\(item.rating)"
        if let image = item.image {
            img.kf.setImage(with: URL(string: image))
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension ResturantCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(indexPath: indexPath) as GenreCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 70, height: 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
}
