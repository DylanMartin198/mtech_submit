//
//  ViewController.swift
//  BasicInteractions
//
//  Created by Dylan Martin on 9/1/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textField.text = ""
        label.text = ""
    }
    
}

