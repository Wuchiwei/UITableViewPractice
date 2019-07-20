//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by WU CHIH WEI on 2019/7/21.
//  Copyright © 2019 WU CHIH WEI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    func setupTableView() {
        
        tableView.dataSource = self
        
        tableView.delegate = self
    }

    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NTU", for: indexPath)
        
        guard let profileCell = cell as? ProfileTableViewCell else { return cell }
        
        if indexPath.section == 0 {
        
            profileCell.imageView?.image = UIImage(named: "Steven_Jobs")
            
            profileCell.userNameLabel.text = "Steven_Jobs"
            
            profileCell.userQuoteLabel.text = "Stay Hungry, Stay Foolish."
            
        } else if indexPath.section == 1 {
        
            profileCell.imageView?.image = UIImage(named: "Tim_Cook")
            
            profileCell.userNameLabel.text = "Tim_Cook"
            
            profileCell.userQuoteLabel.text = "Make Apple Great Again!"
        }
        
        return profileCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Section \(section) !"
    }
    
    //MARK: - UITableViewDelegatez
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 64.0
    }
}

