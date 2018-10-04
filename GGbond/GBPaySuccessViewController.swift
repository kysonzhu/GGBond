//
//  GBPaySuccessViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/3.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPaySuccessViewController: GBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "支付成功"
        
        let leftButton = UIButton.init(type: UIButtonType.system)
        leftButton.frame = CGRect.init(x: 0, y: 0, width: 10, height: 10)
        leftButton.setBackgroundImage(UIImage.init(named: "back"), for: UIControlState.normal)
        leftButton.addTarget(self, action: #selector(leftButtonClicked), for: UIControlEvents.touchUpInside)
        let leftItem = UIBarButtonItem.init(customView: leftButton)
        let spaceItem = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        spaceItem.width = -15;
        self.navigationItem.leftBarButtonItems = [spaceItem,leftItem]

    }
    
    @objc func leftButtonClicked() -> Void {
        self.navigationController?.popToRootViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

}
