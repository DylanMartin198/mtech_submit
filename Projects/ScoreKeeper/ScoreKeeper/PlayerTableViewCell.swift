//
//  PlayerTableViewCell.swift
//  ScoreKeeper
//
//  Created by Dylan Martin on 11/8/22.
//

import UIKit

protocol PlayerCellDelegate: AnyObject {
    func updatePlayers(sender: PlayerTableViewCell, newScore: Int)
}

class PlayerTableViewCell: UITableViewCell {
    
    weak var delegate: PlayerCellDelegate?
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperCount: UILabel!
    @IBOutlet weak var playerNameTextField: UILabel!
    
   
    @IBAction func stepperTapped(_ sender: UIStepper) {
        stepperCount.text = Int(sender.value).description
        delegate?.updatePlayers(sender: self, newScore: Int(sender.value))
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var someValue: Int = 0 {
        didSet {
            stepperCount.text = "\(someValue)"
        }
    }
    
    func update(with player: Player) {
        stepper.value = Double(player.playerScore) ?? 0
        stepperCount.text = player.playerScore
        playerNameTextField.text = player.playerName
    }
}
