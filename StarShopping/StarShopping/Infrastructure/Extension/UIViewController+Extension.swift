//
//  UIViewController+Extension.swift
//  StarShopping
//
//  Created by Mac User on 7/12/21.
//

import UIKit

extension UIViewController{
    @IBAction func pushBack(_ sender:UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func openCart(_ sender: Any) {
        self.navigationController?.pushViewController(CartViewController.cartViewController(), animated: true)
    }
}
