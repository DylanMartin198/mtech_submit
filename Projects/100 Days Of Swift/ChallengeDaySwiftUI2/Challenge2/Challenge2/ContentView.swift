//
//  ContentView.swift
//  Challenge2
//
//  Created by Dylan Martin on 1/11/23.
//

import SwiftUI

enum Choice: String {
    case rock, paper, scissors
}

struct ContentView: View {
    @State private var userChoice = Choice.rock
    @State private var appChoice = Choice.rock
    @State private var result = ""
    
    var body: some View {
        VStack {
            Text("Your choice: \(userChoice.rawValue)")
            
            HStack {
                Button(action: {
                    self.userChoice = .rock
                }) {
                    Text("Rock")
                }
                Button(action: {
                    self.userChoice = .paper
                }) {
                    Text("Paper")
                }
                Button(action: {
                    self.userChoice = .scissors
                }) {
                    Text("Scissors")
                }
            }
            
            Text("App choice: \(appChoice.rawValue)")
            
            Text("Result: \(result)")
            
            Button(action: {
                self.playGame()
            }) {
                Text("Play")
            }
        }
    }
    
    func playGame() {
        let choices = [Choice.rock, Choice.paper, Choice.scissors]
        appChoice = choices.randomElement()!
        
        if userChoice == appChoice {
            result = "It's a tie!"
        } else if (userChoice == .rock && appChoice == .scissors) ||
            (userChoice == .paper && appChoice == .rock) ||
            (userChoice == .scissors && appChoice == .paper) {
            result = "You won!"
        } else {
            result = "You lost!"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
