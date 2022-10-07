//
//  ResultViewController.swift
//  PersonalityQuiz2.0
//
//  Created by Dylan Martin on 10/5/22.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
        
        @IBAction func doneButtonPressed(_ sender: Any) {
            self.dismiss(animated: true)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            calculatePersonalityResult()
        }
            
        var responses: [Answer]
        
        init?(coder: NSCoder, responses: [Answer]) {
            self.responses = responses
            print(responses)
            super.init(coder: coder)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    
    func calculatePersonalityResult() {
       var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        for response in responseTypes {
             frequencyOfAnswers[response] = (frequencyOfAnswers[response]
         ?? 0) + 1
         }
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 >
         $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
            }
            
        }
