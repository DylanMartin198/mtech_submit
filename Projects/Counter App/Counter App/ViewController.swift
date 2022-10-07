//
//  ViewController.swift
//  Counter App
//
//  Created by Dylan Martin on 9/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var CounterTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        someValue = 0
    }
    
    var someValue: Int = 0{
            didSet {
                CounterTextField.text = "\(someValue)"
            }
        }

    @IBAction func buttonPressed1(sender: UIButton) {
        someValue += 1
    }

    @IBAction func buttonPressed(sender: UIButton) {
        someValue += 2
    }
    
    
    @IBAction func buttonPressed3(sender: UIButton) {
        someValue += 3
    }
    
}

