//
//  DetailCategoryViewController.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

class DetailCategoryViewController: UIViewController {

    @IBOutlet weak var imageslider: ImageSliderView!
    
    var idCategory:Int!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail Category"
        imageslider.images = initDetail(id: idCategory)
    }
    
    private func initDetail(id:Int) -> [UIImage]{
        var images = [UIImage]()
        var strings = [String]()
        if id == 0{
            strings = ["smartphone-2","smartphone-3","smartphone-4"]
        }else if id == 1{
            strings = ["laptop-2","laptop-3","laptop-4"]
        }else{
            strings = ["tv-2","tv-3","tv-4"]
        }
        for i in 0..<strings.count{
            images.append(UIImage(named: strings[i])!)
        }
        return images
    }
}
