//
//  QuestionModel.swift
//  TrueFalseStarter
//
//  Created by Ashley Donohoe on 7/17/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import GameKit

class QuestionModel {
    
    var indexOfSelectedQuestion: Int = 0
    let questionsPerRound = 4
    var questionsAsked = 0
    var correctQuestions = 0
    

    let QuestionData: [[String : String]] = [
        ["Question": "Only female koalas can whistle", "Answer": "False"],
        ["Question": "Blue whales are technically whales", "Answer": "True"],
        ["Question": "Camels are cannibalistic", "Answer": "False"],
        ["Question": "All ducks are birds", "Answer": "True"]
    ]
    
    func getRandomQuestion() -> [String: String] {
        
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(QuestionData.count)
        return QuestionData[indexOfSelectedQuestion]
    }
    
}
