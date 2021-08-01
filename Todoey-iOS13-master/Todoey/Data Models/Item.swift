//
//  Item.swift
//  Todoey
//
//  Created by Bence Fulop on 31/7/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

class Item: Encodable {
    var title: String
    var done: Bool?
    
    init(title: String, done: Bool? = false) {
        self.title = title
        self.done = done
    }
}
