//
//  DetailsTableViewController.swift
//  familyProject3.0
//
//  Created by Dylan Martin on 10/31/22.
//

import UIKit

class DetailsTableViewController: UITableViewController {

    let familyMember = FamilyMember.familyMembers
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return familyMember.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentFamilyMember = familyMember[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FamilyCell", for: indexPath)
        
        var config = cell.defaultContentConfiguration()
        config.text = currentFamilyMember.name
        
        cell.contentConfiguration = config
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = sender as? IndexPath, let detailViewController = segue.destination as? ViewController else {
            fatalError()
        }
        detailViewController.family = familyMember[indexPath.row]
    }
    
}
