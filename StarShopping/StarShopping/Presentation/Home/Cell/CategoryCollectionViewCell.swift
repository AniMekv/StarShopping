//
//  CategoryCollectionViewCell.swift
//  StarShopping
//
//  Created by Mac User on 7/15/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        imageView.layer.cornerRadius = 8
    }

    func configure(cellWith category:Category){
        name.text = category.name
        content.text = category.content
        if let imageName = category.imageName{            
            imageView.image = UIImage(named: imageName)
        }
        
    }
    
}
