//
//  ProfileTableViewCell.swift
//  UITableViewPractice
//
//  Created by WU CHIH WEI on 2019/7/21.
//  Copyright © 2019 WU CHIH WEI. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userQuoteLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.layer.cornerRadius = 22.0
        
        userImageView.layer.borderColor = UIColor.gray.cgColor
        
        userImageView.layer.borderWidth = 2.0
        
        userImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
