//
//  AthleteViewController.swift
//  FavoriteAthlete
//
//  Created by Dylan Martin on 10/15/22.
//

import UIKit

class AthleteViewController: UIViewController {
    
    @IBOutlet weak var PlayerName: UITextField!
    
    @IBOutlet weak var playerAge: UITextField!
    
    @IBOutlet weak var playerLeague: UITextField!
    
    @IBOutlet weak var playerTeam: UITextField!
    
    @IBAction func SaveButton(_ sender: Any) {
        guard let name = PlayerName.text,
            let ageString = playerAge.text,
            let age = Int(ageString),
            let league = playerLeague.text,
            let team = playerTeam.text else {return}
        
            athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.athlete = nil
        super.init(coder: coder)
    }
    
    func updateView() {
        guard let athlete = athlete else {return}
        
        PlayerName.text = athlete.name
        let ageString = playerAge.text,
        _ = Int(ageString!)
        playerLeague.text = athlete.league
        playerTeam.text = athlete.team
    }
    

}
