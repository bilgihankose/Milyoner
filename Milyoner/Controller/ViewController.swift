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
    @IBOutlet weak var scoreLabel: UILabel!

    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        updateUI()
        
    }
    
    @IBAction func anserButtonClicked(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer) {
            
            sender.setBackgroundImage(#imageLiteral(resourceName: "green"), for: .normal)
            
        } else {
            
            sender.setBackgroundImage(#imageLiteral(resourceName: "red"), for: .normal)
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    

    @objc func updateUI(){
        
        questionLabel.text = quizBrain.getQuestionText()
        
        scoreLabel.text = "\(quizBrain.getScore()) 💰"
        
        trueButton.setBackgroundImage(#imageLiteral(resourceName: "buttonimage"), for: .normal)
        
        falseButton.setBackgroundImage(#imageLiteral(resourceName: "buttonimage"), for: .normal)
        
        
    }
}

