//
//  UIViewController.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    func presentMainNavigation(selectedTab: Int) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let tabViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
            tabViewController.selectedTab = selectedTab
            present(tabViewController, animated: true, completion: nil)
        }
    }
    
    func presentLoginNavigation() {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            present(viewController, animated: true, completion: nil)
        }
    }
    
    func pushDetailNavigation(selectedRow: Int) {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "DetailCategoryViewController") as? DetailCategoryViewController {
            viewController.idCategory = selectedRow
            viewController.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    

    
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}



