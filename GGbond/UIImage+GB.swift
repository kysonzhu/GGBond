//
//  UIImage+GB.swift
//  GGbond
//
//  Created by kyson on 2018/10/4.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit

extension UIImage {
    
    class func creatImageWithColor(color:UIColor)->UIImage{
        let rect = CGRect.init(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
