//
//  GBPayActionViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/3.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPayActionViewController: UIViewController {

    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var addressButton: UIButton!
    @IBOutlet weak var separatorView1: UIView!
    @IBOutlet weak var separatorView2: UIView!
    @IBOutlet weak var wechatpayButton: UIButton!
    @IBOutlet weak var alipayButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "支付"

        self.timeButton.layer.cornerRadius = 15
        self.timeButton.layer.masksToBounds = true
        
        self.addressButton.layer.cornerRadius = 15
        self.addressButton.layer.masksToBounds = true
        
        self.wechatpayButton.layer.cornerRadius = 20
        self.wechatpayButton.layer.masksToBounds = true
        
        self.alipayButton.layer.cornerRadius = 20
        self.alipayButton.layer.masksToBounds = true
        
        self.wechatpayButton.reactive.controlEvents(.touchUpInside).observe{ event in
            let paysuccessViewController : GBPaySuccessViewController = GBPaySuccessViewController.init()
            self.navigationController?.pushViewController(paysuccessViewController, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
