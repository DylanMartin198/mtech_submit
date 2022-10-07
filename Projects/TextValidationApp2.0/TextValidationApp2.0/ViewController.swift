//
//  ViewController.swift
//  TextValidationApp2.0
//
//  Created by Dylan Martin on 10/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var PasswordError: UILabel!
    
    @IBOutlet weak var Submit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetForm()
    }
    
    @IBAction func resetForm() {
        Submit.isEnabled = true
        PasswordError.isHidden = false
        Password.text = ""
    }
    
    
    @IBAction func passwordChanged(_ sender: Any) {
        if let password = Password.text {
            if let errorMessage = invalidPassword(password){
                PasswordError.text = errorMessage
                PasswordError.isHidden = false
            } else {
                PasswordError.isHidden = true
            }
        }
    }
    
    func invalidPassword(_ value: String) -> String? {
        if value.count < 8 {
            return "Password must be at least 8 characters"
        }
        
        if containsSpecialCharacter(value) {
            return "Password must contain a special character"
        }
        
        func containsSpecialCharacter(_ value: String) -> Bool {
            let regularExpression = ".*[@,.!@#$%^&*<>?+=-].*"
            let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
            return !predicate.evaluate(with: value)
        }
        
        
        self.PasswordError.backgroundColor = UIColor.green
        return "success!"
    }
}

