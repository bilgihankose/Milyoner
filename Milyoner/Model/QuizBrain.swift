//
//  QuizBrain.swift
//  Milyoner
//
//  Created by Bilgihan Köse on 20.08.2020.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "1 + 2 = 5", answer: "Yanlış"),
        Question(text: "3 + 2 = 6", answer: "Yanlış"),
        Question(text: "9 - 7 = 2", answer: "Doğru")
       ]
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool { 
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
}
