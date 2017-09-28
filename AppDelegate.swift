//
//  AppDelegate.swift
//  scarffit
//
//  Created by Erik Anstine on 7/11/17.
//  Copyright © 2017 SquidInq. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let menuItemStore = MenuItemStore()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let navController = window!.rootViewController as! UINavigationController
        let menuItemsController = navController.topViewController as! MenuItemsViewController
        menuItemsController.menuItemStore = menuItemStore
        
        UINavigationBar.appearance().tintColor = UIColor(hue: 0.33, saturation: 1, brightness: 0.36, alpha: 0.54)
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        let success = menuItemStore.saveChanges()
        if (success) {
            print("Saved all of the MenuItems")
        } else {
            print("Could not save any of the MenuItems")
        }
    }


}

