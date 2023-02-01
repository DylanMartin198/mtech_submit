//
//  SearchTableViewController.swift
//  Life-FormSearch
//
//  Created by Dylan Martin on 1/20/23.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchResultsUpdating, UISearchControllerDelegate, UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
    private lazy var searchController: UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Search For Life-Form"
        sc.searchBar.delegate = self
        return sc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    

}
