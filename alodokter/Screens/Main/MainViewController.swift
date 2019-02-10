//
//  MainViewController.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    var selectedTab: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.selectedIndex = selectedTab;
    }
}
