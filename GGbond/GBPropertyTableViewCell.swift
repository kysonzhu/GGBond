//
//  GBPropertyTableViewCell.swift
//  GGbond
//
//  Created by kyson on 2018/10/2.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPropertyTableViewCell: UITableViewCell {

    @IBOutlet weak var propertyImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ivartarImageView: UIImageView!
    @IBOutlet weak var propertyConceptLabel: UILabel!
    @IBOutlet weak var propertyTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.propertyImageView.layer.cornerRadius = 2
        self.propertyImageView.layer.masksToBounds = true

        self.ivartarImageView.layer.cornerRadius = 13
        self.ivartarImageView.layer.masksToBounds = true
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
}
