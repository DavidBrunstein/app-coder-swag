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
    func getCategories() -> [Category] {
        return categories
    }
}
