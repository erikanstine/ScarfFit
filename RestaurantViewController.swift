//
//  RestaurantViewController.swift
//  scarffit
//
//  Created by Erik Anstine on 7/19/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit



class RestaurantViewController: UIViewController {
    
    var inboundSelection = [""]
    
    @IBAction func deselectAll() {
        print("Deselect pressed")
        
        //Post notification
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "deselectAll"), object: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let ingredientStore = IngredientStore()
        
        switch segue.identifier {
        case "ingredientEmbedSegue"?:
            if let destinationVC = segue.destination as? IngredientsViewController {
                destinationVC.ingredientStore = ingredientStore
                destinationVC.inboundSelection = inboundSelection
            }
            
        case "macroCounterEmbedSegue"?:
            if let destinationVC = segue.destination as? MacroCounterViewController {
                destinationVC.ingredientStore = ingredientStore
            }
            
        default:
            print("Error: Unknown segue identifier (Restaurant to Containers)")
        }
        
    }
    
    
    
}
