//
//  LoginViewController.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    let ud = PersistentData.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
        buttonLogin.setPrimaryButton()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        ud.load()
        if ud.isLogin{
            presentMainNavigation(selectedTab: 0)
        }
    }
    
    func randomPhone() -> String {
        return String(Int.random(in: 1000000000 ..< 9999999999))
    }

    @IBAction func onButtonLoginPressed(_ sender: Any) {
        if textEmail.validateNotEmpty() && textPassword.validateNotEmpty(){
            ud.email = textEmail.text
            ud.password = textPassword.text
            ud.phone = "+628\(randomPhone())"
            ud.isLogin = true
            ud.save()
            presentMainNavigation(selectedTab: 0)
        }else{
            Tools.showInfoAlert(message: "Please fill email or password")
        }
    }
}
