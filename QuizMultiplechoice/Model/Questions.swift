//
//  Questions.swift
//  QuizMultiplechoice
//
//  Created by Leen on 06/08/2024.
//

import Foundation

struct Q {
    
    var Question : String
    var Answer : [String]
    var correctAnswer : String
    
    init(q : String , a : [String] , correctAnswer: String){
        
        Question = q
        Answer = a
        self.correctAnswer = correctAnswer
    }
}
