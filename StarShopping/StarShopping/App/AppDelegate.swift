//
//  AppDelegate.swift
//  StarShopping
//
//  Created by Mac User on 7/04/21.
//

import UIKit
import CoreData

@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        if UserDefaults.standard.getFirstLoad() == false{
            Category.loadCategories(withContainer: DatabaseManager.persistentContainer)
            Products.loadProducts(withContainer: DatabaseManager.persistentContainer)
            UserDefaults.standard.setFirsLoad()
        }
        
        
        
        return true
    }
    



    
}

