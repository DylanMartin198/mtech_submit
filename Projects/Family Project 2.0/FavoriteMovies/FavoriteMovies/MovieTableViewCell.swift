//
//  MovieTableViewCell.swift
//  FavoriteMovies
//
//  Created by Dylan Martin on 12/29/22.
//

import Foundation
import UIKit

class MovieTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "MovieCell"

     @IBOutlet weak var posterImage: UIImageView!
     @IBOutlet weak var titleLabel: UILabel!
     @IBOutlet weak var yearLabel: UILabel!
     @IBOutlet weak var heartImage: UIImageView!
    
    func update() {
        posterImage.image = UIImage(systemName: Movie.posterURL!)
        titleLabel.text = Movie.title
        yearLabel.text = Movie.year
        heartImage.image = Movie.imdbID
    }
    
    
 }
