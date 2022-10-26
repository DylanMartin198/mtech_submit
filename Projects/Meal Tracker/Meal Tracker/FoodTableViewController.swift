//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Dylan Martin on 10/18/22.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        let breakfast = Meal(name: "breakfast", food: [Food(name: "eggs", description: "eggs"), Food(name: "pancake", description: "yummy"), Food(name: "waffle", description: "pancake but better")])
        let lunch = Meal(name: "lunch", food: [Food(name: "sandwhich", description: "bread"), Food(name: "chicken", description: "yummy"), Food(name: "grapes", description: "build different")])
        let dinner = Meal(name: "Dinner", food: [Food(name: "spaghetti", description: "noodle"), Food(name: "pizza", description: "goat"), Food(name: "coke", description: "best soda")])
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let foods = meals[section].food
        return foods.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let foods = meals[indexPath.section].food[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(foods.name)"
        content.secondaryText = foods.description
        
        cell.contentConfiguration = content
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
   
//    In tableView(_:titleForHeaderInSection:), return the name of the meal that corresponds to the section.
    

}
