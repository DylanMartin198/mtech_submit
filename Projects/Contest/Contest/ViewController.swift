//
//  ViewController.swift
//  Contest
//
//  Created by Dylan Martin on 11/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if EmailTextField.text == ""  {
            shakingAnimation()
        } else {
            performSegue(withIdentifier: "NextView", sender: sender)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func shakingAnimation() {
    UIView.animate(withDuration: 0.2, animations: {
        let rightTransform  = CGAffineTransform(translationX: 20, y: 0)
        self.EmailTextField.transform = rightTransform
    }) { _ in
        UIView.animate(withDuration: 0.2, animations: {
            self.EmailTextField.transform = CGAffineTransform.identity })
    }
  }
}

