//
//  Tools.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

class Tools: NSObject {
    static func showInfoAlert(title: String = "Informasi", message: String, completion: (()->())? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            completion?()
        }))
        
        alertController.show()
    }
    
    
    static func showYesNoAlert(title: String = "Konfirmasi", message: String, onYes:(()->())?=nil, onNo:(()->())?=nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Ya", style: .default, handler: { (action) in
            onYes?()
        }))
        
        alertController.addAction(UIAlertAction(title: "Tidak", style: .default, handler: { (action) in
            onNo?()
        }))
        
        alertController.show()
    }
    
    static func randomPhone() -> String {
        return String(Int.random(in: 1000000000 ..< 9999999999))
    }
    
}
