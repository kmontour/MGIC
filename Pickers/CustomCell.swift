//
//  CustomCell.swift
//  Pickers
//
//  Created by MJ Kim on 5/13/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var ActivityDescription: UILabel!
    
    @IBOutlet weak var edit: UIButton!
    
    @IBOutlet weak var delete: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
