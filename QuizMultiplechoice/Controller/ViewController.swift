//
//  ViewController.swift
//  QuizMultiplechoice
//
//  Created by Leen on 06/08/2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var Choice3: UIButton!
    @IBOutlet private weak var Choice2: UIButton!
    @IBOutlet private weak var Choice1: UIButton!
    @IBOutlet private weak var questionLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    @IBOutlet private weak var progressBar: UIProgressView!
    
    
    private var quizbrain = QuizBrain()
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
        changeLabel()
    }
    
    
    
    @IBAction func ButtonPressed(_ sender: UIButton){
        changeLabel()
        
        let userAnswer = sender.currentTitle
        let isright = quizbrain.checkAnswer(userAnswer!)
        
        if(isright)
        {
            sender.backgroundColor = UIColor.green
            }
        
        
        else{
            sender.backgroundColor = UIColor.red
        }
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(changeLabel), userInfo: nil, repeats: false)
    }
    
    
    

    @objc func changeLabel(){
        questionLabel.text = quizbrain.getQuestionText()
        scoreLabel.text = "Score: \(quizbrain.getScore())"
        progressBar.progress = quizbrain.getProgress()
        
        Choice1.backgroundColor = UIColor.clear
        Choice2.backgroundColor = UIColor.clear
        Choice3.backgroundColor = UIColor.clear
        
        let answerChoices = quizbrain.getChoices()
        
        Choice1.setTitle(answerChoices[0], for: .normal)
        Choice2.setTitle(answerChoices[1], for: .normal)
        Choice3.setTitle(answerChoices[2], for: .normal)
    }
}

