//
//  PersistentData.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

class PersistentData: NSObject {
    static let shared = PersistentData()
    
    var email:String?
    var password:String?
    var phone:String?
    var isLogin:Bool = false
    
    override init() {
        super.init()
        load()
    }
    
    func save() {
        let ud = UserDefaults.standard
        
        ud.set(email, forKey: "email")
        ud.set(password, forKey: "password")
        ud.set(phone, forKey: "phone")
        ud.set(isLogin, forKey: "isLogin")
        
        ud.synchronize()
    }
    
    func load() {
        let ud = UserDefaults.standard
        
        email = ud.string(forKey: "email")
        password = ud.string(forKey: "password")
        phone = ud.string(forKey: "phone")
        isLogin = ud.bool(forKey: "isLogin")
    }
}
