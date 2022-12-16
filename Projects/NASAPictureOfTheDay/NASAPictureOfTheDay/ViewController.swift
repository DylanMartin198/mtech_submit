//
//  ViewController.swift
//  NASAPictureOfTheDay
//
//  Created by Dylan Martin on 11/30/22.
//

import UIKit


@MainActor
class ViewController: UIViewController {
    
    @IBOutlet weak var NASAImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        NASAImageView.image = UIImage(systemName: "photo.on.rectangle")
        descriptionLabel.text = ""
        titleLabel.text = ""
        
        Task {
            do {
                let photoInfo = try await
                PhotoViewController.fetchPhotoInfo()
                self.title = photoInfo.title
                self.descriptionLabel.text = photoInfo.description
                self.titleLabel.text = photoInfo.copyright
            } catch {
                self.title = "Error Fetching Photo"
                self.NASAImageView.image = UIImage(systemName: "exclamationmark.octagon")
                self.descriptionLabel.text = error.localizedDescription
                self.titleLabel.text = ""
            }
        }
        
        func updateUI(with photoInfo: PhotoInfo) {
            Task {
                do {
                    let image = try await PhotoViewController.fetchImage(from:
                       photoInfo.url)
                    title = photoInfo.title
                    NASAImageView.image = image
                    descriptionLabel.text = photoInfo.description
                    titleLabel.text = photoInfo.copyright
                } catch {
                    updateUI(with: error)
                }
            }
        }
        
        func updateUI(with error: Error) {
            title = "Error Fetching Photo"
            NASAImageView.image = UIImage(systemName: "exclamationmark.octagon")
            descriptionLabel.text = error.localizedDescription
            titleLabel.text = ""
        }
    }
}

