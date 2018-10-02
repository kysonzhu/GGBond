//
//  GBTabbarViewController.swift
//  GGbond
//
//  Created by 程薇 on 2018/9/27.
//  Copyright © 2018年 程薇. All rights reserved.
//

import UIKit

class GBTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (!GBUserCenter.shareInstance.hasLogined()) {
            let loginVC = GBLoginViewController.init(nibName: nil, bundle: nil)
            self.present(loginVC, animated: true, completion: {
                
            })
        }

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
