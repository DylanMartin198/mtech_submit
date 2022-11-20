//
//  ImageTableViewCell.swift
//  TechSocialMediaApp-YearLongProject
//
//  Created by Dylan Martin on 11/15/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // need to make function that changes postImageView into something
    
    func loadImage(image: UIImage) {
        
        postImageView.image = image

    }

}
