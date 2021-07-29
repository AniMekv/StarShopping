//
//  UserDetailsViewController.swift
//  StarShopping
//
//  Created by Mac User on 7/22/21.
//

import UIKit

class UserDetailsViewController: UIViewController {
    
    @IBOutlet weak var successView: UIView!
    @IBOutlet weak var tickImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    var name:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
        successView.layer.cornerRadius = 100
        tickImage.layer.cornerRadius = 65

    }
    
    @IBAction func goToHome(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
