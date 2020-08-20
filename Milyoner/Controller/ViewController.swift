//
//  ViewController.swift
//  Milyoner
//
//  Created by Bilgihan Köse on 19.08.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func anserButtonClicked(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer) { //if is true
            sender.backgroundColor = .green
            print("Right")
        } else { //otherwise it is false
            sender.backgroundColor = .red
            print("Wrong")
        }
        
        if questionNumber < quiz.count - 1 { //ya da questionNumber + 1 < quiz.count kullanabilirdik. Iki turlu de out of range almanin onune geceriz.
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    

    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        
    }
}

