//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Dylan Martin on 10/19/22.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func update(with: Emoji) {
        emojiLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    
}
