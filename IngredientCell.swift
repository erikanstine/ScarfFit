//
//  IngredientCell.swift
//  scarffit
//
//  Created by Erik Anstine on 7/25/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

class IngredientCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var calLabel: UILabel!
    @IBOutlet var servingSizeLabel: UILabel!
    
    @IBOutlet var dairyImageView: UIImageView!
    @IBOutlet var glutenImageView: UIImageView!
    @IBOutlet var soyImageView: UIImageView!
    @IBOutlet var sulphiteImageView: UIImageView!
    @IBOutlet var vegetarianImageView: UIImageView!
    @IBOutlet var veganImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.adjustsFontForContentSizeCategory = true
        calLabel.adjustsFontForContentSizeCategory = true
        servingSizeLabel.adjustsFontForContentSizeCategory = true
        
        
    }
}
