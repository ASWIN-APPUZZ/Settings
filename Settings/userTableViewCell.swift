//
//  userTableViewCell.swift
//  Settings
//
//  Created by ASWIN A on 14/09/23.
//

import UIKit

class userTableViewCell: UITableViewCell {

    
    @IBOutlet weak var uname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
