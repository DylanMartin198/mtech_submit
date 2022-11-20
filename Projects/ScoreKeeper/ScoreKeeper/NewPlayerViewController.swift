//
//  NewPlayerViewController.swift
//  ScoreKeeper
//
//  Created by Dylan Martin on 11/8/22.
//

import UIKit

class NewPlayerViewController: UIViewController {
    
    var player: Player?
    
    
    @IBOutlet weak var newPlayerNameTextField: UITextField!
    
    @IBOutlet weak var newPlayerScoreTextField: UITextField!
    
    @IBOutlet weak var newPlayerSaveButton: UIButton!
    
    @IBAction func savePlayerButtonTapped(_ sender: UIButton) {
        guard let PlayerName = newPlayerNameTextField.text,
              let PlayerScore = newPlayerScoreTextField.text else { return }
        
        player = Player(playerScore: PlayerScore, playerName: PlayerName)
        performSegue(withIdentifier: "saveUnwind", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
//    @IBAction func unwindFromAddRegistration(unwindSegue: UIStoryboardSegue) {
//        guard let addRegistrationTableViewController = unwindSegue.source as?
//                AddRegistrationTableViewController,
//              let registration = addRegistrationTableViewController.registration else { return}
//        registrations.append(registration)
//        tableView.reloadData()
//    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard segue.identifier == "saveUnwind" else { return }
//
//        let playerName = newPlayerNameTextField.text ?? ""
//        let playerScore = newPlayerScoreTextField.text ?? ""
//
//        Player(playerScore: "0", playerName: "Player 1")
        
        
//        @IBAction func saveButtonTapped(_ sender: Any) {
//            guard let title = titleTextField.text,
//                let author = authorTextField.text,
//                let genre = genreTextField.text,
//                let length = lengthTextField.text else {return}
//
//            book = Book(title: title, author: author, genre: genre, length: length)
//            performSegue(withIdentifier: "UnwindToBookTable", sender: self)
//        }
//    }
    
}
