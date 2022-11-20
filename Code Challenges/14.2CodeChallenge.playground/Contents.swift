import UIKit

func rockPaperScissors(play: String) -> String {
    let plays = ["rock", "paper", "scissors"]
    let random = plays.randomElement()
    for _ in play.lowercased() {
        if play == "rock" && random == "rock" {
            return "It's a tie!"
        } else if play == "rock" && random == "paper" {
            return "You lose!"
        } else if play == "rock" && random == "scissors" {
            return "You win!"
        } else if play == "paper" && random == "rock" {
            return "You win!"
        } else if play == "paper" && random == "paper" {
            return "It's a tie!"
        } else if play == "paper" && random == "scissors" {
            return "You lose!"
        } else if play == "scissors" && random == "rock" {
            return "You lose!"
        }else if play == "scissors" && random == "paper" {
            return "You win!"
        }else if play == "scissors" && random == "scissors" {
            return "It's a tie!"
        }
    }
    return ""
}

rockPaperScissors(play: "rock")
rockPaperScissors(play: "paper")
rockPaperScissors(play: "scissors")
rockPaperScissors(play: "rock")
rockPaperScissors(play: "paper")
rockPaperScissors(play: "scissors")
