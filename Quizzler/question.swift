//
//  dataModel.swift
//  Quizzler
//
//  Created by Sultan Sidhu on 2018-05-20.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question{
    //A class representing a question.
    let question: String
    let answer: Bool
    init(questionText: String, answers: Bool) {
        question = questionText
        answer = answers
    }
}


