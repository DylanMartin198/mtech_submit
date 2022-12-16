//
//  RepresentativeTableViewCell.swift
//  API Project
//
//  Created by Dylan Martin on 12/2/22.
//

import UIKit

class RepresentativeTableViewCell: UITableViewCell {

    @IBOutlet weak var RepresentativeName: UILabel!
    @IBOutlet weak var RepresentativeParty: UILabel!
    @IBOutlet weak var RepresentativeLink: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//    var name: String? = nil
//    {
//        didSet {
//            // Ensure that an update is performed whenever this property changes.
//            if oldValue != name {
//                setNeedsUpdateConfiguration()
//            }
//        }
//    }
//    var artist: String? = nil
//    {
//        didSet {
//            // Ensure that an update is performed whenever this property changes.
//            if oldValue != artist {
//                setNeedsUpdateConfiguration()
//            }
//        }
//    }
//    var artworkImage: UIImage? = nil
//    {
//        didSet {
//            if oldValue != artworkImage {
//                setNeedsUpdateConfiguration()
//            }
//        }
//    }
//
//    override func updateConfiguration(using state: UICellConfigurationState) {
//        var content = defaultContentConfiguration().updated(for: state)
//
//        // set content's text to the item's name
//        content.text = name
//
//        // set content's secondary text to the item's artist
//        content.secondaryText = artist
//
//        // configure the image display properties for the content image based on
//        // the existance of the artworkImage
//        content.imageProperties.reservedLayoutSize = CGSize(width: 100.0, height: 100.0)
//        if let image = artworkImage {
//            content.image = image
//        } else {
//            // set set content's image to the system image "photo"
//            content.image = UIImage(systemName: "photo")
//            content.imageProperties.preferredSymbolConfiguration = UIImage.SymbolConfiguration(pointSize: 75.0)
//            content.imageProperties.tintColor = .lightGray
//        }
//
//        self.contentConfiguration = content
//    }
}
