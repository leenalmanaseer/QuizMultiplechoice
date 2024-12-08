//
//  quizBrain.swift
//  QuizMultiplechoice
//
//  Created by Leen on 06/08/2024.
//

import Foundation
struct QuizBrain{
    
    
let quiz = [ Q(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
      Q(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
      Q(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
      Q(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
      Q(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
      Q(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
      Q(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
      Q(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
      Q(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
      Q(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")]


    var questionNumber : Int = 0
var Score = 0
    
    mutating func checkAnswer(_ userAnswer :String) -> Bool{
      
        if (userAnswer == quiz[questionNumber].correctAnswer)
        {
            Score += 1
            return true
           
        }
        
        else{
            return false }
    }
    
    func getScore() -> Int {
        
        return Score
    }
    
    mutating func getProgress() -> Float {
        
        return (Float(questionNumber + 1) / Float(quiz.count))
        
    }
    
    func getQuestionText() -> String{
        
        let text : String = quiz[questionNumber].Question
        return text
    }
    
   mutating func nextQuestion(){
        
       if(questionNumber + 1 < quiz.count )
       {
           questionNumber += 1
           
       }
           else
       {
           questionNumber = 0
               Score = 0 
       }
        
    }
    
    func getChoices() -> [String]{
        
        return quiz[questionNumber].Answer
        
    }
    
}

    
