//
//  GBBaseViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/4.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBBaseViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bindViewModel()
    }
    
    func bindViewModel() -> Void {
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.shadowImage = UIImage.init()
        
       
    }

}
