//
//  ItemTableViewCell.swift
//  borro
//
//  Created by Usama Bin Shafqat on 11/2/16.
//  Copyright © 2016 Usama Bin Shafqat. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellDetails: UILabel!
    @IBOutlet weak var cellPrice: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
