//
//  postsTableViewController.swift
//  TechSocialMediaApp-YearLongProject
//
//  Created by Dylan Martin on 11/11/22.
//

import UIKit


class postsTableViewController: UITableViewController {
    

    var post = Posts.posts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return post.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentImagePost = post[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as? ImageTableViewCell else { return UITableViewCell() }
        cell.loadImage(image: UIImage(named: currentImagePost.imageName)!)
        
        return cell
        
//        let currentPost = post[indexPath.row]
//               let cellComment = tableView.dequeueReusableCell(withIdentifier: "CommentForPost", for: indexPath)
//
//               var config = cellComment.defaultContentConfiguration()
//               config.text = currentPost.comment
//
//               cellComment.contentConfiguration = config
//
//               return cellComment
    }
    
}

//if let imageToLoad = selectedImage {
////            imageView.image = UIImage(named: imageToLoad)
//        }


//let img = UIImage(named: "NAME_OF_YOUR_FILE_WITHOUT_EXTENSION")
// imageView.image = img
//assigning image to UIImage
