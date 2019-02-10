//
//  UIButton.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

extension UIButton{
    
    func setPrimaryButton() {
        self.setTitleColor(UIColor.white, for: .normal)
        self.backgroundColor = UIColor(hex: "#3776DB")
        self.layer.cornerRadius = self.bounds.size.height / 2
        self.layer.masksToBounds = true
        self.isEnabled = true
    }
    
    func setSmallDisableButton() {
        self.setBackgroundImage(UIImage(), for: .normal)
        self.backgroundColor = UIColor(hex: "#BDBDBD")
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = self.bounds.size.height / 2
        self.layer.masksToBounds = true
        self.isEnabled = false
    }
    
}

