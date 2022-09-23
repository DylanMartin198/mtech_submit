//
//  ViewController.swift
//  InterfaceBuilderBasics2.0
//
//  Created by Dylan Martin on 8/30/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var MainLabel: UILabel!
    @IBAction func buttonPressed(_ sender: Any) {
        MainLabel.text = "This app rocks!"
    }
    
}

