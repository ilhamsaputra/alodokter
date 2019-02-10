//
//  ViewController.swift
//  alodokter
//
//  Created by Ilham Saputra on 09/02/19.
//  Copyright © 2019 Ilham Saputra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    
    var categoryItems:[String] = ["smartphone-1","laptop-1","tv-1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationSetup()
        tableSetup()
    }

    private func navigationSetup(){
        navigationController?.navigationBar.setApplicationTheme()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        title = "Home"
    }
    
    private func tableSetup(){
        tableview.register(UINib(nibName: "CategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoryTableViewCell")
        tableview.delegate = self
        tableview.dataSource = self
        tableview.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as! CategoryTableViewCell
        cell.imageCategory.image = UIImage(named: categoryItems[indexPath.row])
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.pushDetailNavigation(selectedRow: indexPath.row)
    }
}


