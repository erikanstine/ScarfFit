//
//  MenuItem.swift
//  scarffit
//
//  Created by Erik Anstine on 8/23/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

class MenuItem: NSObject, NSCoding {
    var name: String
    var ingredients: [String]
    
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
        
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(ingredients, forKey: "ingredients")
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        ingredients = aDecoder.decodeObject(forKey: "ingredients") as! [String]
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let words = ["Chicken", "Steak", "Carnitas", "Barbacoa", "White Rice", "Brown Rice"]
            var idx = arc4random_uniform(UInt32(words.count))
            
            let rndName = words[Int(idx)]
            
            idx = arc4random_uniform(UInt32(words.count))
            var randArray = [words[Int(idx)]]

            idx = arc4random_uniform(UInt32(words.count))
            randArray.append(words[Int(idx)])
            
            self.init(name: rndName, ingredients: randArray)
        } else {
            self.init(name: "", ingredients: [""])
        }
    }
    
}
