//
//  CategoryTableViewCell.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCategory: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCategory.clipsToBounds = true
        imageCategory.layer.cornerRadius = 5
    }

}
