//
//  InfoListTableViewCell.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class InfoListTableViewCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var number: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
