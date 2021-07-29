//
//  View+Extension.swift
//  StarShopping
//
//  Created by Mac User on 7/11/21.
//

import UIKit

extension UIView{
 
@IBInspectable var cornerRadius: CGFloat {
    get {
        return layer.cornerRadius
    }
    set {
         layer.masksToBounds = newValue > 0
         layer.cornerRadius = newValue
    }
}

@IBInspectable var borderWidth: CGFloat {
    get {
        return layer.borderWidth
    }
    set {
        layer.borderWidth = newValue
    }
}

@IBInspectable var borderColor: UIColor? {
    get {
        return UIColor(cgColor: layer.borderColor!)
    }
    set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
