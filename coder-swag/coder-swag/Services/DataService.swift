//
//  DataService.swift
//  coder-swag
//
//  Created by David Brunstein on 2017-12-25.
//  Copyright © 2017 David Brunstein. All rights reserved.
//

import Foundation

class DataService {
    
    // Singleton pattern
    static let instance = DataService()
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$20", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$18", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$15", imageName: "hat04.png")
    ]
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$30", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie  White", price: "$33", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$34", imageName: "hoodie04.png")
    ]
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Grey", price: "$10", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$12", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt  White", price: "$13", imageName: "shirt03.png"),
        Product(title: "Devslopes Shirt Black", price: "$14", imageName: "shirt04.png"),
        Product(title: "Devslopes Shirt Pink", price: "$15", imageName: "shirt05.png")
    ]
    private let digitalProducts = [Product]()

    func getCategories() -> [Category] {
        return categories
    }
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDititalGoods()
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
    func getDititalGoods() -> [Product] {
        return digitalProducts
    }

    
}
