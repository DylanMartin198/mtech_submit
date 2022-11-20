//
//  PlayerTableViewController.swift
//  ScoreKeeper
//
//  Created by Dylan Martin on 11/8/22.
//

import UIKit

class PlayerTableViewController: UITableViewController, PlayerCellDelegate {
    
    var player = Player.players
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func updatePlayers(sender: PlayerTableViewCell, newScore: Int) {
        if let indexPath = tableView.indexPath(for: sender) {
            player[indexPath.row].playerScore = String(newScore)
        }
        
        player = player.sorted {
            $0.playerScore < $1.playerScore
        }
        
        self.tableView.reloadData()
        
//        if let indexPath = tableView.indexPath(for: sender) {
//                var toDo = toDos[indexPath.row]
//                toDo.isComplete.toggle()
//                toDos[indexPath.row] = toDo
//                tableView.reloadRows(at: [indexPath], with: .automatic)
//                ToDo.saveToDos(toDos)
//        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return player.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerTableViewCell
        
        let currentPlayer = player[indexPath.row]
        cell.update(with: currentPlayer)
        cell.showsReorderControl = true
        cell.delegate = self
        
        return cell
        
        //        //Step 1: Dequeue cell
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        //
        //        //Step 2: Fetch model object to display
        //        let emoji = emojis[indexPath.row]
        //
        //        //Step 3: Configure cell
        //        cell.update(with: emoji)
        //        cell.showsReorderControl = true
        //
        //        //Step 4: Return cell
        //        return cell
    }
    
    @IBAction func unwindToPlayerTableView(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind",
              let sourceViewController = segue.source as? NewPlayerViewController,
              let players = sourceViewController.player else { return }
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            player[selectedIndexPath.row] = players
            tableView.reloadRows(at: [selectedIndexPath], with: .none)
        } else {
            let newIndexPath = IndexPath(row: player.count, section: 0)
            player.append(players)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
        
    }
    
    
    
    
    //    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    //        let movingPlayers = player.remove(at: sourceIndexPath.row)
    //        player.insert(movingPlayers, at: destinationIndexPath.row)
//}

    
    
    
}
