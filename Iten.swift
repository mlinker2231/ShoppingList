//
//  Iten.swift
//  ShoppingList
//
//  Created by Michael Linker on 2/12/19.
//  Copyright © 2019 Michael Linker. All rights reserved.
//

import Foundation
class Item {
    var name: String
    var quantity: Int
    init(name: String,quantity: Int) {
        self.quantity = quantity
        self.name = name
    }
}

