//
//  PersonalHeaderView.swift
//  GGbond
//
//  Created by kyson on 2018/10/4.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPersonalHeaderView: UIView {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatorImaeView: UIImageView!
    
    override func awakeFromNib() {
        self.avatorImaeView.layer.cornerRadius = 42.5
        self.avatorImaeView.layer.masksToBounds = true
        
    }
    
    class func loadFromXib() -> GBPersonalHeaderView {
        return Bundle.main.loadNibNamed("GBPersonalHeaderView", owner: nil, options: nil)?.first as! GBPersonalHeaderView
    }
    
    
}
