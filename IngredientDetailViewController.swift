//
//  DetailViewController.swift
//  scarffit
//
//  Created by Erik Anstine on 7/26/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

class IngredientDetailViewController: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var servingSizeLabel: UILabel!
    @IBOutlet var caloriesLabel: UILabel!
    @IBOutlet var fatCalLabel: UILabel!
    @IBOutlet var gTotalFatLabel: UILabel!
    @IBOutlet var gSatFatLabel: UILabel!
    @IBOutlet var gTransFatLabel: UILabel!
    @IBOutlet var mgCholesterolLabel: UILabel!
    @IBOutlet var mgSodiumLabel: UILabel!
    @IBOutlet var gCarbLabel: UILabel!
    @IBOutlet var gDietaryFiberLabel: UILabel!
    @IBOutlet var gSugarLabel: UILabel!
    @IBOutlet var gNetCarbLabel: UILabel!
    @IBOutlet var gProteinLabel: UILabel!
    
    var ingredient: Ingredient! {
        didSet {
            navigationItem.title = ingredient.name
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //print(ingredient.name)
        nameLabel.text = ingredient.name
        servingSizeLabel.text = "\(ingredient.ozServingSize)"
        caloriesLabel.text = "\(ingredient.calories)"
        fatCalLabel.text = "\(ingredient.calFromFat)"
        gTotalFatLabel.text = "\(ingredient.gTotalFat)"
        gSatFatLabel.text = "\(ingredient.gSatFat)"
        gTransFatLabel.text = "\(ingredient.gTransFat)"
        mgCholesterolLabel.text = "\(ingredient.mgCholesterol)"
        mgSodiumLabel.text = "\(ingredient.mgSodium)"
        gCarbLabel.text = "\(ingredient.gTotalCarbs)"
        gDietaryFiberLabel.text = "\(ingredient.gDietaryFiber)"
        gSugarLabel.text = "\(ingredient.gSugar)"
        gNetCarbLabel.text = "\(ingredient.gNetCarbs)"
        gProteinLabel.text = "\(ingredient.gProtein)"
    }
}
