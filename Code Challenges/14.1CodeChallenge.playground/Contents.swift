import UIKit


func rockPaperScissors(Player1: String, Player2: String) -> String {
//    switch players {
//    case "scissors":
//        print("")
//    case "rock":
//        print("")
//    case "paper":
//        print("")
//    default:
//        print("This shouldn't run")
//    }
    
    let players = Player2 + Player1
    for _ in players {
        if Player1 == "scissors" && Player2 == "paper" {
            return "Player1 wins!"
        } else if Player1 == "rock" && Player2 == "paper" {
            return "Player2 wins!"
        } else if Player1 == "paper" && Player2 == "paper" {
            return "Go again."
        } else if Player1 == "paper" && Player2 == "scissors" {
            return "Player2 wins!"
        } else {
            return "Make sure you spelt it right."
        }
    }
    
    return ""
}

rockPaperScissors(Player1: "scissors", Player2: "paper")
rockPaperScissors(Player1: "rock", Player2: "paper")
rockPaperScissors(Player1: "paper", Player2: "paper")
rockPaperScissors(Player1: "paper", Player2: "rock")
