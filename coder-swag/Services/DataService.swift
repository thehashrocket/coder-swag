//
//  DataService.swift
//  coder-swag
//
//  Created by Jason Shultz on 10/3/17.
//  Copyright © 2017 Jason Shultz. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$42", imageName: "hoodie01.pnp"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$42", imageName: "hoodie02.pnp"),
        Product(title: "Devslopes Hoodie Grey", price: "$42", imageName: "hoodie03.pnp"),
        Product(title: "Devslopes Hoodie Black", price: "$42", imageName: "hoodie04.pnp")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.pnp"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.pnp"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.pnp"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.pnp"),
        Product(title: "Kickflip Studios Shirt Black", price: "$18", imageName: "shirt04.pnp")
        ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "DIGITAL":
            return getDigitalGoods()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
