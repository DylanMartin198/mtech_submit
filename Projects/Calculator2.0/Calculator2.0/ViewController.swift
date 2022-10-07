//
//  ViewController.swift
//  Calculator2.0
//
//  Created by Dylan Martin on 9/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainTextField: UILabel!
    
    var work: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addToWorkings(value: String) {
        work = work + value
        MainTextField.text = work
    }
    
    @IBAction func Clear(_ sender: Any) {
       work = ""
        MainTextField.text = ""
    }
    
    @IBAction func ChangeNumberToPositiveOrNegative(_ sender: Any) {
        var textNumber = String(work)
        textNumber = "-" + textNumber
        work = textNumber
    }
    
    @IBAction func Percentage(_ sender: Any) {
        var number1 = Double(work)
        number1 = (number1! / 100)
        work = String(number1!)
    }
    
    @IBAction func Equal(_ sender: Any) {
        let expression = NSExpression(format: work)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        MainTextField.text = resultString
    }
    
    func formatResult(result: Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func Multiplication(_ sender: Any) {
        addToWorkings(value: "*")
    }
    
    @IBAction func Division(_ sender: Any) {
        addToWorkings(value: "/")
        
    }
    
    @IBAction func Addition(_ sender: Any) {
        addToWorkings(value: "+")
        
    }
    
    @IBAction func Subtraction(_ sender: Any) {
        addToWorkings(value: "-")
        
    }
    
    @IBAction func onetap(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func twotap(_ sender: Any) {
        addToWorkings(value: "2")
    }
    @IBAction func threetap(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func fourtap(_ sender: Any) {
        addToWorkings(value: "4")
    }
    @IBAction func fivetap(_ sender: Any) {
        addToWorkings(value: "5")
    }
    @IBAction func sixtap(_ sender: Any) {
        addToWorkings(value: "6")
    }
    @IBAction func seventap(_ sender: Any) {
        addToWorkings(value: "7")
    }
    @IBAction func eighttap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    @IBAction func ninetap(_ sender: Any) {
        addToWorkings(value: "9")
    }
    @IBAction func zerotap(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
}

