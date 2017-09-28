//
//  IngredientStore.swift
//  scarffit
//
//  Created by Erik Anstine on 7/11/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

class IngredientStore {
    
    var allIngredients = [Ingredient]()
    
    
    
    //MARK: Individual Ingredient Entry
    init() {
        
        let flTort = Ingredient(name: "Flour Tortilla", ozServingSize: 4, calories: 320, calFromFat: 80, gTotalFat: 9, gSatFat: 0.5, gTransFat: 0.0, mgCholesterol: 0, mgSodium: 600, gTotalCarbs: 50, gDietaryFiber: 3, gSugar: 0, gNetCarbs: 0, gProtein: 8, milkBool: false, soyBool: false, glutenBool: true, sulphiteBool: true, vegetarianBool: true, veganBool: true)
        allIngredients.append(flTort)
        
        let threeCrispyCorn = Ingredient(name: "3 Crispy Corn Tortillas", ozServingSize: 1.5, calories: 200, calFromFat: 80, gTotalFat: 9, gSatFat: 1, gTransFat: 0, mgCholesterol: 0, mgSodium: 0, gTotalCarbs: 29, gDietaryFiber: 3, gSugar: 0, gNetCarbs: 26, gProtein: 3, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(threeCrispyCorn)
        
        let threeSoftCorn = Ingredient(name: "3 Soft Corn Tortillas", ozServingSize: 3.5, calories: 210, calFromFat: 20, gTotalFat: 1.5, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 0, gTotalCarbs: 42, gDietaryFiber: 3, gSugar: 0, gNetCarbs: 39, gProtein: 3, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(threeSoftCorn)
        
        let threeFlour = Ingredient(name: "3 Soft Flour Tortillas", ozServingSize: 3, calories: 250, calFromFat: 70, gTotalFat: 8, gSatFat: 0.5, gTransFat: 0, mgCholesterol: 0, mgSodium: 480, gTotalCarbs: 40, gDietaryFiber: 2, gSugar: 0, gNetCarbs: 38, gProtein: 7, milkBool: false, soyBool: false, glutenBool: true, sulphiteBool: true, vegetarianBool: true, veganBool: true)
        allIngredients.append(threeFlour)
        
        let romaine = Ingredient(name: "Romaine Lettuce (lg - salad)", ozServingSize: 2.5, calories: 10, calFromFat: 0, gTotalFat: 0, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 5, gTotalCarbs: 2, gDietaryFiber: 1, gSugar: 1, gNetCarbs: 1, gProtein: 1, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(romaine)
        
//MARK: -Meats
        let chicken = Ingredient(name: "Chicken", ozServingSize: 4, calories: 180, calFromFat: 60, gTotalFat: 7.0, gSatFat: 3, gTransFat: 0, mgCholesterol: 125, mgSodium: 310, gTotalCarbs: 0, gDietaryFiber: 0, gSugar: 0, gNetCarbs: 0, gProtein: 32, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: false, veganBool: false)
        allIngredients.append(chicken)
        
        let steak = Ingredient(name: "Steak", ozServingSize: 4, calories: 150, calFromFat: 60, gTotalFat: 6, gSatFat: 2.5, gTransFat: 0, mgCholesterol: 80, mgSodium: 330, gTotalCarbs: 1, gDietaryFiber: 1, gSugar: 0, gNetCarbs: 0, gProtein: 21, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: false, veganBool: false)
        allIngredients.append(steak)
        
        let carnitas = Ingredient(name: "Carnitas", ozServingSize: 4, calories: 210, calFromFat: 120, gTotalFat: 12, gSatFat: 7, gTransFat: 0, mgCholesterol: 65, mgSodium: 450, gTotalCarbs: 0, gDietaryFiber: 0, gSugar: 0, gNetCarbs: 0, gProtein: 23, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: false, veganBool: false)
        allIngredients.append(carnitas)
        
        let barbacoa = Ingredient(name: "Barbacoa", ozServingSize: 4, calories: 170, calFromFat: 60, gTotalFat: 7, gSatFat: 2.5, gTransFat: 0, mgCholesterol: 65, mgSodium: 530, gTotalCarbs: 2, gDietaryFiber: 1, gSugar: 0, gNetCarbs: 1, gProtein: 24, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: false, veganBool: false)
        allIngredients.append(barbacoa)
        
        let chorizo = Ingredient(name: "Chorizo", ozServingSize: 4, calories: 300, calFromFat: 170, gTotalFat: 18, gSatFat: 9, gTransFat: 0, mgCholesterol: 80, mgSodium: 810, gTotalCarbs: 2, gDietaryFiber: 1, gSugar: 0, gNetCarbs: 1, gProtein: 32, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: true, vegetarianBool: false, veganBool: false)
        allIngredients.append(chorizo)
        
        let sofritas = Ingredient(name: "Sofritas", ozServingSize: 4, calories: 150, calFromFat: 80, gTotalFat: 10, gSatFat: 1.5, gTransFat: 0, mgCholesterol: 0, mgSodium: 560, gTotalCarbs: 9, gDietaryFiber: 3, gSugar: 5, gNetCarbs: 6, gProtein: 8, milkBool: false, soyBool: true, glutenBool: false, sulphiteBool: true, vegetarianBool: true, veganBool: true)
        allIngredients.append(sofritas)
//MARK: -Fillings
        
        let wRice = Ingredient(name: "White Rice", ozServingSize: 4, calories: 210, calFromFat: 35, gTotalFat: 4, gSatFat: 0.5, gTransFat: 0, mgCholesterol: 0, mgSodium: 350, gTotalCarbs: 40, gDietaryFiber: 1, gSugar: 0, gNetCarbs: 39, gProtein: 4, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(wRice)
        
        let bRice = Ingredient(name: "Brown Rice", ozServingSize: 4, calories: 210, calFromFat: 50, gTotalFat: 6, gSatFat: 1, gTransFat: 0, mgCholesterol: 0, mgSodium: 190, gTotalCarbs: 36, gDietaryFiber: 2, gSugar: 0, gNetCarbs: 34, gProtein: 4, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(bRice)
        
        let bBeans = Ingredient(name: "Black Beans", ozServingSize: 4, calories: 130, calFromFat: 15, gTotalFat: 1.5, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 210, gTotalCarbs: 22, gDietaryFiber: 7, gSugar: 2, gNetCarbs: 15, gProtein: 8, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(bBeans)
        
        let pBeans = Ingredient(name: "Pinto Beans", ozServingSize: 4, calories: 130, calFromFat: 10, gTotalFat: 1.5, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 210, gTotalCarbs: 21, gDietaryFiber: 8, gSugar: 1, gNetCarbs: 13, gProtein: 8, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(pBeans)
        
        let fVeg = Ingredient(name: "Fajita Vegetables", ozServingSize: 2.5, calories: 20, calFromFat: 0, gTotalFat: 0, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 150, gTotalCarbs: 5, gDietaryFiber: 1, gSugar: 2, gNetCarbs: 4, gProtein: 1, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(fVeg)
//MARK: -Toppings
        
        let tomSalsa = Ingredient(name: "Fresh Tomato Salsa", ozServingSize: 3.5, calories: 25, calFromFat: 0, gTotalFat: 0, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 550, gTotalCarbs: 1, gDietaryFiber: 1, gSugar: 1, gNetCarbs: 0, gProtein: 0, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(tomSalsa)
        
        let cornSalsa = Ingredient(name: "Roasted Chili-Corn Salsa", ozServingSize: 3.5, calories: 80, calFromFat: 15, gTotalFat: 1.5, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 330, gTotalCarbs: 16, gDietaryFiber: 3, gSugar: 4, gNetCarbs: 13, gProtein: 3, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(cornSalsa)
        
        let TGSalsa = Ingredient(name: "Tomatillo Green-Chili Salsa", ozServingSize: 2, calories: 15, calFromFat: 5, gTotalFat: 0, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 260, gTotalCarbs: 4, gDietaryFiber: 0, gSugar: 2, gNetCarbs: 4, gProtein: 0, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(TGSalsa)
        
        let TRSalsa = Ingredient(name: "Tomatillo Red-Chili Salsa", ozServingSize: 2, calories: 30, calFromFat: 0, gTotalFat: 0, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 500, gTotalCarbs: 4, gDietaryFiber: 1, gSugar: 0, gNetCarbs: 3, gProtein: 0, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(TRSalsa)
        
        let sCream = Ingredient(name: "Sour Cream", ozServingSize: 2, calories: 110, calFromFat: 90, gTotalFat: 9, gSatFat: 7, gTransFat: 0, mgCholesterol: 40, mgSodium: 30, gTotalCarbs: 2, gDietaryFiber: 0, gSugar: 2, gNetCarbs: 2, gProtein: 2, milkBool: true, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: false)
        allIngredients.append(sCream)
        
        let cheese = Ingredient(name: "Cheese", ozServingSize: 1, calories: 110, calFromFat: 70, gTotalFat: 8, gSatFat: 5, gTransFat: 0, mgCholesterol: 30, mgSodium: 190, gTotalCarbs: 1, gDietaryFiber: 0, gSugar: 0, gNetCarbs: 1, gProtein: 6, milkBool: true, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: false)
        allIngredients.append(cheese)
        
        let guac = Ingredient(name: "Guacamole", ozServingSize: 4, calories: 230, calFromFat: 190, gTotalFat: 22, gSatFat: 3.5, gTransFat: 0, mgCholesterol: 0, mgSodium: 370, gTotalCarbs: 8, gDietaryFiber: 6, gSugar: 1, gNetCarbs: 2, gProtein: 2, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(guac)
        
        let romaineTopping = Ingredient(name: "Romaine Lettuce (sm - topping)", ozServingSize: 1, calories: 5, calFromFat: 0, gTotalFat: 0, gSatFat: 0, gTransFat: 0, mgCholesterol: 0, mgSodium: 0, gTotalCarbs: 1, gDietaryFiber: 1, gSugar: 0, gNetCarbs: 0, gProtein: 0, milkBool: false, soyBool: false, glutenBool: false, sulphiteBool: false, vegetarianBool: true, veganBool: true)
        allIngredients.append(romaineTopping)
    
    }
    
    
    
    
    //@discardableResult func createIngredient() -> Ingredient {
    //    let newIngredient = Ingredient(random: true)
        
    //    allIngredients.append(newIngredient)
        
    //    return newIngredient
   // }
    
   // init() {
        //for _ in 0..<20 {
        //    createIngredient()
       // }
   // }

}
