//
//  RepresentativeTableViewController.swift
//  API Project
//
//  Created by Dylan Martin on 12/2/22.
//

import UIKit

class RepresentativeTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    let storeItemController = StoreItemController()
    
    var items = [Representative]()
    var imageLoadTasks: [IndexPath: Task<Void, Never>] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func fetchMatchingItems() {
        
        self.items = []
        self.tableView.reloadData()
        
        let searchTerm = searchBar.text ?? ""
        
        if !searchTerm.isEmpty {
            
            let query = [
                "name": " ",
                "party": " ",
                "link": " "
            ]
            
            Task {
                do {
                    let items = try await storeItemController.fetchItems(matching: query)
                    self.items = items
                    self.tableView.reloadData()
                } catch {
                    print(error)
                }
            }
        }
    }
    
    func configure(cell: RepresentativeTableViewCell, forItemAt indexPath: IndexPath) {
        
        let item = items[indexPath.row]
//        cell.RepresentativeName = item.name
//        cell.RepresentativeParty = item.party
//        cell.RepresentativeLink = item.link
        imageLoadTasks[indexPath] = Task {
            
        }
    }
    
    @IBAction func filterOptionUpdated(_ sender: UISegmentedControl) {
        
        fetchMatchingItems()
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Item", for: indexPath) as! RepresentativeTableViewCell
        configure(cell: cell, forItemAt: indexPath)

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        imageLoadTasks[indexPath]?.cancel()
    }
}

extension RepresentativeTableViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        fetchMatchingItems()
        searchBar.resignFirstResponder()
    }
}

