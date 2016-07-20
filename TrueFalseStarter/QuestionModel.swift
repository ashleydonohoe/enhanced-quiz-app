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
    var questionsUsed = [Int]()

    
    func getRandomQuestion() -> Question {
        // If the array of questions used is empty, go ahead and grab a random index and add it to the array
        if questionsUsed.count == 0 {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
            questionsUsed.append(indexOfSelectedQuestion)
        } else {
        // Else, grab a random index, check if it's in the array. If it is, try again, else go ahead and use it and add it to the array
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
            
            while questionsUsed.contains(indexOfSelectedQuestion) {
               indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
            }
            questionsUsed.append(indexOfSelectedQuestion)
        }
        
        return questions[indexOfSelectedQuestion]
    }
    
}
