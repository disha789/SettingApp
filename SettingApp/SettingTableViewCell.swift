//
//  SettingTableViewCell.swift
//  SettingApp
//
//  Created by Disha patel on 6/4/24.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
 
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
