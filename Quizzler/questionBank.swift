//
//  questionBank.swift
//  Quizzler
//
//  Created by Sultan Sidhu on 2018-05-22.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
    // A class representing a question bank
    var list: Array = [Question]() // An array storing the
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(questionText: "Valentine\'s day is banned in Saudi Arabia.", answers: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(questionText: "A slug\'s blood is green.", answers: true))
        
        list.append(Question(questionText: "Approximately one quarter of human bones are in the feet.", answers: true))
        
        list.append(Question(questionText: "The total surface area of two human lungs is approximately 70 square metres.", answers: true))
        
        list.append(Question(questionText: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answers: true))
        
        list.append(Question(questionText: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answers: false))
        
        list.append(Question(questionText: "It is illegal to pee in the Ocean in Portugal.", answers: true))
        
        list.append(Question(questionText: "You can lead a cow down stairs but not up stairs.", answers: false))
        
        list.append(Question(questionText: "Google was originally called \"Backrub\".", answers: true))
        
        list.append(Question(questionText: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", answers: true))
        
        list.append(Question(questionText: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answers: false))
        
        list.append(Question(questionText: "No piece of square dry paper can be folded in half more than 7 times.", answers: false))
        
        list.append(Question(questionText: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", answers: true))
    }
}


