//
//  CategoryAd.swift
//  documentAppSample
//
//  Created by snowman on 2017/10/20.
//  Copyright © 2017年 snowman. All rights reserved.
//

import Foundation

class CategoryAd {
    
enum Category: String {
    case asc2 = "asc2"
    case asc3 = "asc3"
}
    func searchPosition() -> CategoryAd.Category {
        
        return .asc2
    }
}
