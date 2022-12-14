//
//  ViewController.swift
//  FavoriteMovies
//
//  Created by Dylan Martin on 12/29/22.
//

import UIKit


class MovieSearchViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let movieController = MovieController.shared
    
    private lazy var searchController: UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Search a movie title"
        return sc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationItem.searchController = searchController
    }
}


extension MovieSearchViewController: UISearchResultsUpdating, UISearchControllerDelegate {

     func updateSearchResults(for searchController: UISearchController) {
         movieController.fetchAndSaveMovies(with: searchController.searchBar.text!)
     }

 }

