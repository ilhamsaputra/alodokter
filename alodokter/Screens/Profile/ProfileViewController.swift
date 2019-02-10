//
//  ProfileViewController.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit
import Foundation

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var buttonKeluar: UIButton!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelGender: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var ImageProfile: UIImageView!
    @IBOutlet weak var viewProfile: UIView!
    
    let ud = PersistentData.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewProfile.standardShadow()
        navigationSetup()
        initComponent()
        buttonKeluar.setPrimaryButton()
    }
    
    private func navigationSetup(){
        navigationController?.navigationBar.setApplicationTheme()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        title = "Profile"
    }
    
    private func initComponent(){
        ud.load()
        labelEmail.text = ud.email
        labelPhone.text = ud.phone
        if Int(ud.phone!)! % 2 == 0{
            labelGender.text = "Female"
            ImageProfile.image = UIImage(named: "female")
        }else{
            labelGender.text = "Male"
            ImageProfile.image = UIImage(named: "male")
        }
    }
    
    
    @IBAction func onButtonKeluarPressed(_ sender: Any) {
        ud.isLogin = false
        ud.save()
        presentLoginNavigation()
    }
}
