//
//  ViewController.swift
//  Pokemon app
//
//  Created by Dylan Martin on 9/21/22.
//

import UIKit
import RyansPokemonPackage

class ViewController: UIViewController {

    @IBOutlet weak var newPokemonButton: UIButton!
    
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newPokemonButton.layer.cornerRadius = newPokemonButton.frame.height / 2
    }

    @IBAction func newPokemonButtonTapped(_ sender: Any) {
        Task {
            let pokemon = await getRandomPokemon(gen: .all)
            pokemonNameLabel.text = pokemon.name
            pokemonImageView.setPokemon(pokemon: pokemon)
        }
    }
    
}

