//
//  Question.swift
//  Quizzler
//
//  Created by Владислав on 05/07/2019.
//  Copyright © 2019 Murygin Vladislav. All rights reserved.
//

import Foundation

class Question {
    
    var questionText : String
    var answer : Bool
    
    init (text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
    
}
