//
//  GBLoginViewController.swift
//  GGbond
//
//  Created by 程薇 on 2018/9/27.
//  Copyright © 2018年 程薇. All rights reserved.
//

import UIKit

class GBLoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var vCodeTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var vCodeFetchButton: UIButton!
    @IBOutlet weak var mobileTextBottomLine: UIView!
    @IBOutlet weak var passwordTextBottomLine: UIView!
    @IBOutlet weak var vCodeBottomLine: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.confirmButton.layer.cornerRadius = 22
        self.vCodeFetchButton.layer.cornerRadius = 13

    }

    @IBAction func buttonClicked(_ sender: Any) {
        GBUserCenter.shareInstance.setLogined(logined: true)
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
