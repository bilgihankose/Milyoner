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
    let image = UIImage()
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        updateUI()
        
    }
    
    @IBAction func anserButtonClicked(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if quizBrain.checkAnswer(userAnswer) {
            hapticFeedback()
            sender.setBackgroundImage(#imageLiteral(resourceName: "green"), for: .normal)
            
        } else {
            
            hapticFeedback()
            sender.setBackgroundImage(#imageLiteral(resourceName: "red"), for: .normal)
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI(){
        
        questionLabel.text = quizBrain.getQuestionText()
        
        scoreLabel.text = "\(quizBrain.getScore()) 💰"
        
        trueButton.setBackgroundImage(#imageLiteral(resourceName: "button"), for: .normal)
        
        falseButton.setBackgroundImage(#imageLiteral(resourceName: "button"), for: .normal)
        
        
    }
    
    
    func hapticFeedback(){
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
}

