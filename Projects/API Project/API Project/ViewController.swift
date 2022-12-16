//
//  ViewController.swift
//  API Project
//
//  Created by Dylan Martin on 12/2/22.
//

import UIKit

    
class ViewController: UIViewController, PhotoControllerDelegate {
    func fetchPhotoInfo() {
    }
    
    func fetchImage(from url: URL) {
    }
    
    @IBOutlet weak var dogImage: UIImageView!
    
    @IBAction func NewDogPressed(_ sender: Any) {
        Task {
//            let response = try await fetchPhotoInfo()
//            let image = try await fetchImage(from: URL(string: response.message)!)
//            dogImage.image = image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogImage.image = UIImage(systemName: "photo.on.rectangle")
        
        
        Task {
            do {
                let photoInfo = try await PhotoController.fetchPhotoInfo()
            } catch {
                self.dogImage.image = UIImage(systemName: "exclamationmark.octagon")
            }
        }
        
        func updateUI(with photoInfo: PhotoInfo) {
            Task {
                do {
                    let image = try await PhotoController.fetchImage(from: photoInfo.url)
                    dogImage.image = image
                } catch {
                    updateUI(with: error)
                }
            }
        }
        
        func updateUI(with error: Error) {
            dogImage.image = UIImage(systemName: "exclamationmark.octagon")
        }
    }
}

