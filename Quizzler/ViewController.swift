//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questionBank = QuestionBank()
    var selectedAnswer : Bool = true
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        updateUI()
        super.viewDidLoad()
        questionLabel.text = questionBank.list[questionNumber].question
        scoreLabel.text = "Score: \(score)"
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            selectedAnswer = true
        } else {
            selectedAnswer = false
        }
        checkAnswer()
        updateUI()
  
    }
    
    
    func updateUI() {
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        progressLabel.text = "\(questionNumber + 1) / 13"
    }
    

    func nextQuestion() {
        if questionNumber < 12{
            questionNumber += 1
            questionLabel.text = questionBank.list[questionNumber].question
        } else {
            let alert = UIAlertController(title: "Awesome!", message: "You've completed all the questions, would you like to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Yes!", style: .default) { UIAlertAction in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        if selectedAnswer == questionBank.list[questionNumber].answer{
            ProgressHUD.showSuccess("Correct!")
            score += 1
            scoreLabel.text = "Score: \(score)"
        } else {
            ProgressHUD.showError("Oops!")
            scoreLabel.text = "Score: \(score)"
        }
        nextQuestion()
        
    }
    
    
    func startOver() {
        questionNumber = 0
        questionLabel.text = questionBank.list[questionNumber].question
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(questionNumber+1)
        score = 0
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1)/13"
       
    }
    

    
}
