//
//  GBPropertyViewController.swift
//  GGbond
//
//  Created by kyson on 2018/10/3.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

class GBPropertyViewController: GBBaseViewController {

    @IBOutlet weak var goPayButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.goPayButton.reactive.controlEvents(.touchUpInside).observe{ event in
            let infoViewController : GBPayInfoViewController = GBPayInfoViewController.init()
            self.navigationController?.pushViewController(infoViewController, animated: true)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
