//
//  ViewController.swift
//  Login
//
//  Created by Dylan Martin on 9/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func UserNameTextField(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      }
    @IBAction func ForgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUserName", sender: sender)
    }
    @IBAction func ForgotPassWordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgotPassword", sender: sender)
    }
    
}

