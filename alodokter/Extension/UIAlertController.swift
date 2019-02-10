//
//  UIAlertController.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

extension UIAlertController{
    func show() {
        let win = UIWindow(frame: UIScreen.main.bounds)
        let vc = UIViewController()
        
        vc.view.backgroundColor = .clear
        win.rootViewController = vc
        win.windowLevel = UIWindow.Level.alert + 1
        win.makeKeyAndVisible()
        vc.present(self, animated: true, completion: nil)
    }
}
