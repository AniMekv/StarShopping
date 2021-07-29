//
//  UserDefaults+Extension.swift
//  StarShopping
//
//  Created by Mac User on 7/11/21.
//

import UIKit
extension UserDefaults{
    static let firstLoad = "firstLoad"
    
    func getFirstLoad() -> Bool{
        return UserDefaults.standard.bool(forKey: UserDefaults.firstLoad)
    }
    func setFirsLoad(){
        UserDefaults.standard.set(true, forKey: UserDefaults.firstLoad)
    }
}
