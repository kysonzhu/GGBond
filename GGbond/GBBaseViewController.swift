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

//        UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//        leftBtn.frame = CGRectMake(0, 0, 25,25);
//        [leftBtn setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
//        [leftBtn addTarget:self action:@selector(leftBarBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
//        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    
//        let leftButton = UIButton.init(type: UIButtonType.system)
//        leftButton.frame = CGRect.init(x: 0, y: 0, width: 10, height: 10)
//        leftButton.setBackgroundImage(UIImage.init(named: "back"), for: UIControlState.normal)
//        leftButton.addTarget(self, action: #selector(leftButtonClicked), for: UIControlEvents.touchUpInside)
//        let leftItem = UIBarButtonItem.init(customView: leftButton)
//        let spaceItem = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
//        spaceItem.width = -15;
//        self.navigationItem.leftBarButtonItems = [spaceItem,leftItem]
        
    }
    @objc func leftButtonClicked() -> Void {
        self.navigationController?.popViewController(animated: true)
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
