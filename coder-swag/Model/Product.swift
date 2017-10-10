//
//  Product.swift
//  coder-swag
//
//  Created by Jason Shultz on 10/9/17.
//  Copyright © 2017 Jason Shultz. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
