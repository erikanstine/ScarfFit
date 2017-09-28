//
//  MenuItemStore.swift
//  scarffit
//
//  Created by Erik Anstine on 8/23/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

class MenuItemStore {
    
    var allMenuItems = [MenuItem]()
    let menuItemArchiveURL: URL = {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent("menuItems.archive")
    }()
    
    
    @discardableResult func createMenuItem() -> MenuItem {
        let newMenuItem = MenuItem(random: true)
        
        allMenuItems.append(newMenuItem)
        
        return newMenuItem
    }
    
    init() {
        let burrito = MenuItem(name: "Burrito", ingredients: ["Flour Tortilla"])
        allMenuItems.append(burrito)
        
        let burritoBowl = MenuItem(name: "Burrito Bowl", ingredients: ["White Rice", "Black Beans"])
        allMenuItems.append(burritoBowl)
        
        let tacos = MenuItem(name: "Tacos", ingredients: ["3 Soft Corn Tortillas"])
        allMenuItems.append(tacos)
        
        let salad = MenuItem(name: "Salad", ingredients: ["Romaine Lettuce (lg - salad)"])
        allMenuItems.append(salad)
      
    }
    
    func saveChanges() -> Bool {
        print("Saving menuItems to: \(menuItemArchiveURL.path)")
        return NSKeyedArchiver.archiveRootObject(allMenuItems, toFile: menuItemArchiveURL.path)
    }
}
