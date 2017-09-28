//
//  MenuItemViewController.swift
//  scarffit
//
//  Created by Erik Anstine on 8/23/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

class MenuItemsViewController: UITableViewController {
    
    var menuItemStore: MenuItemStore!
    
    
    @IBAction func goToInfo(_ sender: UIBarButtonItem) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "selectIngredients"?:
            if let row = tableView.indexPathForSelectedRow?.row {
                
                let ingredients = menuItemStore.allMenuItems[row].ingredients
                
                let rVC = segue.destination as! RestaurantViewController
                rVC.inboundSelection = ingredients
                print("Passed the following: \(ingredients)")
            }
            
        case "goToHelp"?:
            break
            
        default:
            preconditionFailure("Unexpected segue identifier. (MenuItem to Restaurant)")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemStore.allMenuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath) as! MenuItemCell
        
        let menuItem = menuItemStore.allMenuItems[indexPath.row]
        
        cell.nameLabel.text = menuItem.name
        cell.numIngredientsLabel.text = "\(menuItem.ingredients.count) items"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.isTranslucent = false
        
        tableView.rowHeight = 65
    }
    
   
}
