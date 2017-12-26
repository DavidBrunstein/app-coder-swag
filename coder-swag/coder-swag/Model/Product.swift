//
//  Product.swift
//  coder-swag
//
//  Created by David Brunstein on 2017-12-25.
//  Copyright © 2017 David Brunstein. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var price: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}
