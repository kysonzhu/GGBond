//
//  GBCookerSummeryCell.swift
//  GGbond
//
//  Created by kyson on 2018/10/5.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBCookerSummeryCell: UITableViewCell {

    @IBOutlet weak var avatorImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.avatorImageView.layer.cornerRadius = 14
        self.avatorImageView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
