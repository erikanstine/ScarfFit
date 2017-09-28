//
//  MacroCounterViewController.swift
//  scarffit
//
//  Created by Erik Anstine on 7/19/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

class MacroCounterViewController: UIViewController {
    
    var ingredientStore: IngredientStore!
    
    @IBOutlet var calCountLabel: UILabel!
    @IBOutlet var fatCountLabel: UILabel!
    @IBOutlet var carbCountLabel: UILabel!
    @IBOutlet var proteinCountLabel: UILabel!
    
    @IBOutlet var macroView: UIView!
    
    var calTotal: Int = 0
    var fatTotal: Double = 0
    var carbTotal: Int = 0
    var proteinTotal: Int = 0
    
    var ingNameList: [String] = []
    var ozTotal: Double = 0
    var fatCalTotal: Int = 0
    var gFatTotal: Double = 0
    var gSatFatTotal: Double = 0
    var gTransFatTotal: Double = 0
    var mgCholesterolTotal: Int = 0
    var mgSodiumTotal: Int = 0
    var gTotalCarbTotal: Int = 0
    var gFiberTotal: Int = 0
    var gSugarTotal: Int = 0
    
    var milkCount: Int = 0
    var soyCount: Int = 0
    var glutenCount: Int = 0
    var sulphiteCount: Int = 0
    var nonVegetarianCount: Int = 0
    var nonVeganCount: Int = 0
    
    var tapGesture = UITapGestureRecognizer()
    
    func setCountersToZero() {
        calCountLabel.text = "0"
        fatCountLabel.text = "0.0"
        carbCountLabel.text = "0"
        proteinCountLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "update"), object: nil, queue: nil, using: updateMacroCounter)
        
        print("Observer added.")
        
        setCountersToZero()
        print("Counters set to zero.")
        
        //Set up gesture recognition
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(MacroCounterViewController.handleTap(sender:)))
        macroView.addGestureRecognizer(tapGesture)
        macroView.isUserInteractionEnabled = true
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "macroDidLoad"), object: nil)
        //print("macroDidLoad posted")
    }
    
    func updateMacroCounter(_ notification: Notification) -> Void {
        guard let dict = notification.userInfo else { return }
        
        let tempAdding = dict["adding"] as! Bool
        let tempName = dict["name"] as! String
        let tempServeSize = dict["servingSize"] as! Double
        let tempKCal = dict["kCal"] as! Int
        let tempCalFromFat = dict["calFromFat"] as! Int
        let tempGFat = dict["gFat"] as! Double
        
        let tempSatFat = dict["gSatFat"] as! Double
        let tempTransFat = dict["gTransFat"] as! Double
        let tempChol = dict["mgChol"] as! Int
        let tempSodium = dict["mgSodium"] as! Int
        
        let tempTotalCarb = dict["gTotalCarbs"] as! Int
        let tempDietaryFiber = dict["gDietaryFiber"] as! Int
        let tempSugar = dict["gSugar"] as! Int
        
        let tempGCarb = dict["gCarb"] as! Int
        let tempGProtein = dict["gProtein"] as! Int
        
        let tempMilkBool = dict["milkBool"] as! Bool
        let tempSoyBool = dict["soyBool"] as! Bool
        let tempGlutenBool = dict["glutenBool"] as! Bool
        let tempSulphiteBool = dict["sulphiteBool"] as! Bool
        
        // Logic reversed for vegetarian/vegan Bools, true corresponds to display status
        let tempVegBool = dict["vegetarianBool"] as! Bool
        let tempVeganBool = dict["veganBool"] as! Bool
        
        
        if tempAdding {
            ingNameList.append(tempName)
            
            print("MacroVC ingredient array after selection: \(ingNameList)")
            
            calTotal = calTotal + tempKCal
            fatTotal = fatTotal + tempGFat
            carbTotal = carbTotal + tempGCarb
            proteinTotal = proteinTotal + tempGProtein
            
            ozTotal = ozTotal + tempServeSize
            fatCalTotal = fatCalTotal + tempCalFromFat
            gFatTotal = gFatTotal + tempGFat
            gSatFatTotal = gSatFatTotal + tempSatFat
            gTransFatTotal = gTransFatTotal + tempTransFat
            mgCholesterolTotal = mgCholesterolTotal + tempChol
            mgSodiumTotal = mgSodiumTotal + tempSodium
            gTotalCarbTotal = gTotalCarbTotal + tempTotalCarb
            gFiberTotal = gFiberTotal + tempDietaryFiber
            gSugarTotal = gSugarTotal + tempSugar
            
            if tempMilkBool { milkCount = milkCount + 1 }
            if tempSoyBool { soyCount = soyCount + 1 }
            if tempGlutenBool { glutenCount = glutenCount + 1 }
            if tempSulphiteBool { sulphiteCount = sulphiteCount + 1 }
            if !tempVegBool { nonVegetarianCount = nonVegetarianCount + 1 }
            if !tempVeganBool { nonVeganCount = nonVeganCount + 1 }
            
        } else {
            ingNameList = ingNameList.filter{$0 != tempName }
            print("MacroVC ingredient array after deselection: \(ingNameList)")

            
            calTotal = calTotal - tempKCal
            fatTotal = fatTotal - tempGFat
            carbTotal = carbTotal - tempGCarb
            proteinTotal = proteinTotal - tempGProtein
            
            ozTotal = ozTotal - tempServeSize
            fatCalTotal = fatCalTotal - tempCalFromFat
            gFatTotal = gFatTotal - tempGFat
            gSatFatTotal = gSatFatTotal - tempSatFat
            gTransFatTotal = gTransFatTotal - tempTransFat
            mgCholesterolTotal = mgCholesterolTotal - tempChol
            mgSodiumTotal = mgSodiumTotal - tempSodium
            gTotalCarbTotal = gTotalCarbTotal - tempTotalCarb
            gFiberTotal = gFiberTotal - tempDietaryFiber
            gSugarTotal = gSugarTotal - tempSugar
            
            if tempMilkBool { milkCount = milkCount - 1 }
            if tempSoyBool { soyCount = soyCount - 1 }
            if tempGlutenBool { glutenCount = glutenCount - 1 }
            if tempSulphiteBool { sulphiteCount = sulphiteCount - 1 }
            if !tempVegBool { nonVegetarianCount = nonVegetarianCount - 1 }
            if !tempVeganBool { nonVeganCount = nonVeganCount - 1 }
                    }
        
    
        calCountLabel.text = "\(calTotal)"
        fatCountLabel.text = "\(fatTotal)"
        carbCountLabel.text = "\(carbTotal)"
        proteinCountLabel.text = "\(proteinTotal)"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "getMealDetail") {
            
            if let destinationVC = segue.destination as? MealDetailViewController {
                
                destinationVC.calTotal = calTotal
                destinationVC.fatTotal = fatTotal
                destinationVC.carbTotal = carbTotal
                destinationVC.proteinTotal = proteinTotal
                destinationVC.ingNameList = ingNameList
                destinationVC.ozTotal = ozTotal
                destinationVC.fatCalTotal = fatCalTotal
                destinationVC.gFatTotal = gFatTotal
                destinationVC.gSatFatTotal = gSatFatTotal
                destinationVC.gTransFatTotal = gTransFatTotal
                destinationVC.mgCholesterolTotal = mgCholesterolTotal
                destinationVC.mgSodiumTotal = mgSodiumTotal
                destinationVC.gTotalCarbTotal = gTotalCarbTotal
                destinationVC.gFiberTotal = gFiberTotal
                destinationVC.gSugarTotal = gSugarTotal
                destinationVC.milkCount = milkCount
                destinationVC.soyCount = soyCount
                destinationVC.glutenCount = glutenCount
                destinationVC.sulphiteCount = sulphiteCount
                destinationVC.nonVegetarianCount = nonVegetarianCount
                destinationVC.nonVeganCount = nonVeganCount            }
        }
    }
    
    
    func handleTap (sender: UITapGestureRecognizer) {
      
        if sender.state == .ended {
            print("Macro bar has been tapped.")
            
            self.performSegue(withIdentifier: "getMealDetail", sender: self)
        }
    }
    
}
