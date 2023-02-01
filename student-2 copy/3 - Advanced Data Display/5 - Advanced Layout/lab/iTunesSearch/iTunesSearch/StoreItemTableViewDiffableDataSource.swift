//
//  StoreItemTableViewDiffableDataSource.swift
//  iTunesSearch
//
//  Created by Dylan Martin on 1/30/23.
//

import UIKit

@MainActor
class StoreItemTableViewDiffableDataSource: UITableViewDiffableDataSource<String, StoreItem> {
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return snapshot().sectionIdentifiers[section]
    }
}
