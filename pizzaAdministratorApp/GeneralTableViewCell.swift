//
//  GeneralTableViewCell.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class GeneralTableViewCell: UITableViewCell {

    @IBOutlet var pizzaName: UILabel!
    @IBOutlet var pizzaImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
