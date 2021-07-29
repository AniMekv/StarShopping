//
//  UserViewController.swift
//  StarShopping
//
//  Created by Mac User on 7/22/21.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var cardNumberField: UITextField!
    @IBOutlet weak var CVVField: UITextField!
    @IBOutlet weak var myVIew: UIView!
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    @IBOutlet weak var proceedLabel: UILabel!
    @IBOutlet weak var monthField: UITextField!
    @IBOutlet weak var yearField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "My Details"
        if cardNumberField.text!.count >= 17 {
            print("good")
            cardNumberField.deleteBackward()
        }
        checkMaxLength(textField: CVVField!, maxLength: 3)
        
        
    }
    
    func checkMaxLength(textField: UITextField!, maxLength: Int) {
        if textField.text!.count > maxLength {
            textField.deleteBackward()
        }
    }
    
    
    @IBAction func onProceedToUserDetails(_ sender: Any) {
        let card = cardNumberField.text ?? ""
        let cvv = CVVField.text ?? ""
        let month = monthField.text ?? ""
        let year = yearField.text ?? ""
        let name = nameField.text ?? ""
        let email = emailField.text ?? ""
        let city = cityField.text ?? ""
        let address = addressField.text ?? ""
        let phone = phoneField.text ?? ""
        
        if card.count != 16 {
            showalert(message: "Card information is not correct")
        } else if cvv.count != 3 {
            showalert(message: "CVV information is not correct")

        } else if name.isEmpty || email.isEmpty || city.isEmpty || address.isEmpty || phone.isEmpty == true {
            showalert(message: "Some information is missing, fill all the tabs")
        } else if (month.count != 2) || year.count != 2  {
            showalert(message: "Month or Year information is not correct")
            print(month)
        } else {
            proceedToPayment()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: { [weak self] in
                self?.configureUserInfo()
                self?.hideProceedToPayment()
            })
        }
        
    }
    
    
    func proceedToPayment() {
        myVIew.isHidden = false
        proceedLabel.isHidden = false
        activityInd.isHidden = false
    }
    
    func hideProceedToPayment() {
        myVIew.isHidden = true
        proceedLabel.isHidden = true
        activityInd.isHidden = true
    }
    
    func configureUserInfo(){
        
        let sb = storyboard.self
        let vc = sb?.instantiateViewController(identifier: "UserDetailsViewController") as? UserDetailsViewController
        vc?.name = nameField.text ?? ""
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    func showalert(message: String){
        let alert = UIAlertController(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
}
