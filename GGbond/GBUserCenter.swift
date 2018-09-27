//
//  GBUserCenter.swift
//  GGbond
//
//  Created by 程薇 on 2018/9/27.
//  Copyright © 2018年 程薇. All rights reserved.
//

import UIKit

class GBUserCenter: NSObject {

    static var shareInstance : GBUserCenter {
        
        struct MyStatic {
            static var instance : GBUserCenter = GBUserCenter()
            
        }
        return MyStatic.instance;
    }
    
    
    func hasLogined() -> Bool{
        return false
    }
    
}
