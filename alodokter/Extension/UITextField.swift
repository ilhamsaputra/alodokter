//
//  UITextField.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

extension UITextField{
    func validateNotEmpty() -> Bool {
        if text != nil && text! != "" { return true }
        return false
    }
}
