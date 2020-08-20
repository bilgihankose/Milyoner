//
//  QuizBrain.swift
//  Milyoner
//
//  Created by Bilgihan Köse on 20.08.2020.
//

import Foundation

//Sorular -> https://onedio.com/haber/bu-20-soruluk-dogru-yanlis-testini-cozerken-soguk-terler-dokeceksiniz-874624

struct QuizBrain {
    let quiz = [
        Question(text: "Havaya atılan bir madeni paranın tura gelme ihtimali 1/2'dir.", answer: "Doğru"),
        Question(text: "Q klavyede Q harfinin sağ yanında W harfi vardır.", answer: "Doğru"),
        Question(text: "-2 çift sayıdır.", answer: "Doğru"),
        Question(text: "Muğla, Marmara Bölgesi'ndedir.", answer: "Yanlış"),
        Question(text: "Türkiye, Birleşmiş Milletler üyesidir.", answer: "Doğru"),
        Question(text: "ABD, NATO üyesidir.", answer: "Doğru"),
        Question(text: "12 Eylül darbesi 1982 yılında gerçekleştirilmiştir.", answer: "Yanlış"),
        Question(text: "Bütün rakamların çarpımı sıfırdır.", answer: "Doğru"),
        Question(text: "Flört kelimesi 1 hecelidir.", answer: "Doğru"),
        Question(text: "Noktaınazar trafik polisi anlamına gelen bir kelimedir.", answer: "Yanlış"),
        Question(text: "Hakkari, Güneydoğu Anadolu Bölgesi'ndedir.", answer: "Yanlış"),
        Question(text: "Kuzey İrlanda Birleşik Krallık'a bağlıdır.", answer: "Doğru"),
        Question(text: "Trakya 3 heceli bir kelimedir.", answer: "Yanlış"),
        Question(text: "Kadınlarda 23, erkeklerde 46 kromozom bulunur.", answer: "Yanlış"),
        Question(text: "İtalya'da Bir Türk Sevdim romanındaki Türk'ün adı Mehmet'tir.", answer: "Doğru"),
        Question(text: "Balonla Beş Hafta kitabında gezilen kıta Asya'dır.", answer: "Yanlış"),
        Question(text: "Uruguay'ın resmi adı Uruguay Doğu Cumhuriyeti'dir.", answer: "Doğru"),
        Question(text: "Su deniz seviesinde 100 derecenin altında buharlaşabilir.", answer: "Doğru"),
        Question(text: "Flört kelimesi 1 hecelidir.", answer: "Doğru"),
        Question(text: "Karbonatın yapısında karbon bulunmaz.", answer: "Yanlış"),
    ]
    var questionNumber = 0
    var score = 0
       
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 10
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion(){
        if questionNumber < quiz.count - 1 { //ya da questionNumber + 1 < quiz.count kullanabilirdik. Iki turlu de out of range almanin onune geceriz.
            questionNumber += 1
        } else {
           questionNumber = 0
        }
    }
    
    
}
