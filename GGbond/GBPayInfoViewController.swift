//
//  GBPayInfoViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/3.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPayInfoViewController: GBBaseViewController {

    @IBOutlet weak var multiDayBookButton: UIButton!
    @IBOutlet weak var addressButton: UIButton!
    @IBOutlet weak var manButton: UIButton!
    @IBOutlet weak var womanButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var gobackButton: UIButton!
    @IBOutlet weak var confirmButton: UIButton!
    
    @IBOutlet weak var separatorView1: UIView!
    @IBOutlet weak var separatorView2: UIView!
    @IBOutlet weak var separatorView3: UIView!
    @IBOutlet weak var separatorView4: UIView!
    @IBOutlet weak var separatorView5: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "选择送餐地点"
        
        self.manButton.layer.cornerRadius = 15
        self.manButton.layer.masksToBounds = true
        
        self.womanButton.layer.cornerRadius = 15
        self.womanButton.layer.masksToBounds = true
        
        self.gobackButton.layer.cornerRadius = 20
        self.gobackButton.layer.masksToBounds = true
        
        self.confirmButton.layer.cornerRadius = 20
        self.confirmButton.layer.masksToBounds = true
        
        self.gobackButton.reactive.controlEvents(.touchUpInside).observe{ event in
            self.navigationController?.popViewController(animated: true)
        }
        
        self.confirmButton.reactive.controlEvents(.touchUpInside).observe{ event in
            let payViewController : GBPayActionViewController = GBPayActionViewController.init()
            self.navigationController?.pushViewController(payViewController, animated: true)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
