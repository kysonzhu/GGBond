//
//  GBPropertyViewModel.swift
//  GGbond
//
//  Created by kyson on 2018/10/7.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift


class GBPropertyViewModel: NSObject {
    
    var property = MutableProperty(GBProperty.init())
    
    override init() {
         super.init()
        
//        let query = LCQuery(className: "Property")
//        query.get("5bb9a86f9f54540070d28c64") { result in
//            switch result {
//            case .success(let property):
//                do {
//                    let prop = GBProperty.init()
//                    prop.title = (property.get("title")?.stringValue)!
//                    prop.detail = (property.get("detail")?.stringValue)!
//                    self.property.value = prop
//                }
//                
//            case .failure(let error):
//                print(error)
//            }
//        }
    }

}
