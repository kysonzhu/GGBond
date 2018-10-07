//
//  GBPropertyViewModel.swift
//  GGbond
//
//  Created by kyson on 2018/10/7.
//  Copyright © 2018 程薇. All rights reserved.
//

import UIKit
import LeanCloud

class GBPropertyViewModel: NSObject {

    var property : GBProperty = GBProperty.init()
    
    override init() {
         super.init()
        let query = LCQuery(className: "Property")
        query.get("5bb9a86f9f54540070d28c64") { result in
            switch result {
            case .success(let property):
                do {
                    self.property.title = (property.get("title")?.stringValue)!
                    self.property.detail = (property.get("detail")?.stringValue)!
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }

}
