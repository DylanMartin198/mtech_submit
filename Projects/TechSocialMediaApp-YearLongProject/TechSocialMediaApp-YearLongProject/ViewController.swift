//
//  ViewController.swift
//  TechSocialMediaApp-YearLongProject
//
//  Created by Dylan Martin on 10/4/22.
//

import UIKit

class ViewController: UIViewController {

    var family: FamilyMember?
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var postTextView: UITextView!
    
    
    override func viewDidLoad() {
        guard let family = family else {
            fatalError()
        }
        super.viewDidLoad()
        
        postTextView.text = family.hobbys
        postImageView.image = UIImage(named: family.imageName)
    }
}

