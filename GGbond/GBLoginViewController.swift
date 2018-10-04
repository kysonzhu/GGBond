//
//  GBLoginViewController.swift
//  GGbond
//
//  Created by 程薇 on 2018/9/27.
//  Copyright © 2018年 程薇. All rights reserved.
//

import UIKit
import ReactiveCocoa

class GBLoginViewController: GBBaseViewController {

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
        
        self.loginStatus()
        
        self.loginButton.reactive.controlEvents(.touchUpInside).observe{ event in
            self.loginStatus()
        }
        
        self.registerButton.reactive.controlEvents(.touchUpInside).observeValues { (UIButton) in
            self.vCodeTextField.isHidden = false
            self.vCodeBottomLine.isHidden = false
            self.vCodeFetchButton.isHidden = false
            self.confirmButton.setTitle("注册", for: UIControlState.normal)
            self.registerButton.setTitleColor(UIColor.orange, for: UIControlState.normal)
            self.loginButton.setTitleColor(UIColor.hexadecimalColor(hexadecimal: "cccccc"), for: UIControlState.normal)
        }
        
        self.mobileTextField.reactive.continuousTextValues.observeValues { (text) in
            self.defaultBottomLineStatus()
            self.mobileTextBottomLine.backgroundColor = UIColor.orange
        }
        
        self.passwordTextField.reactive.continuousTextValues.observeValues { (text) in
            self.defaultBottomLineStatus()
            self.passwordTextBottomLine.backgroundColor = UIColor.orange
        }
        
        self.vCodeTextField.reactive.continuousTextValues.observeValues { (text) in
            self.defaultBottomLineStatus()
            self.vCodeBottomLine.backgroundColor = UIColor.orange
        }
    }
    
    private func defaultBottomLineStatus() {
        self.mobileTextBottomLine.backgroundColor = UIColor.hexadecimalColor(hexadecimal: "cccccc")
        self.passwordTextBottomLine.backgroundColor = UIColor.hexadecimalColor(hexadecimal: "cccccc")
        self.vCodeBottomLine.backgroundColor = UIColor.hexadecimalColor(hexadecimal: "cccccc")
    }
    
    private func loginStatus() {
        self.vCodeTextField.isHidden = true
        self.vCodeBottomLine.isHidden = true
        self.vCodeFetchButton.isHidden = true
        self.confirmButton.setTitle("登录", for: UIControlState.normal)
        self.loginButton.setTitleColor(UIColor.orange, for: UIControlState.normal)
        self.registerButton.setTitleColor(UIColor.hexadecimalColor(hexadecimal: "cccccc"), for: UIControlState.normal)
    }

    @IBAction func buttonClicked(_ sender: Any) {
        GBUserCenter.shareInstance.setLogined(logined: true)
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
