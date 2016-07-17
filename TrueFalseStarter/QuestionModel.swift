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
    
    let QuestionData: [[String : AnyObject]] = [
        ["Question": "How do you say 'Hello' in German?", "Options": ["Hola", "Hallo", "Hei", "Auf wiedersehen"], "Answer": "1"],
        ["Question": "How do you say 'Goodbye' in French?", "Options": ["Hasta luego!", "De rien", "Au revoir", "Guten abend"], "Answer": "2"],
        ["Question": "What is the Spanish word for 'time'?", "Options": ["Tiempo", "Tielo", "Zeit", "Tiemps"], "Answer": "0"],
        ["Question": "What is the Danish word for 'woman'?", "Options": ["Mujer", "Frau", "L'homme", "Kvinde"], "Answer": "3"]
    ]
    
    func getRandomQuestion() -> [String: AnyObject] {
        
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(QuestionData.count)
        return QuestionData[indexOfSelectedQuestion]
    }
    
}
