//
//  ViewController.swift
//  familyProject3.0
//
//  Created by Dylan Martin on 10/31/22.
//

import UIKit

class ViewController: UIViewController {

    var family: FamilyMember?
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    @IBOutlet weak var bodyImageView: UIImageView!
    
    override func viewDidLoad() {
        guard let family = family else {
            fatalError()
        }
        super.viewDidLoad()
        
        bodyTextView.text = family.hobbys
        bodyImageView.image = UIImage(named: family.imageName)
    }


}

