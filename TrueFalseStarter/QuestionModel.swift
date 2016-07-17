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
    

//    let QuestionData: [[String : String]] = [
//        ["Question": "Only female koalas can whistle", "Answer": "False"],
//        ["Question": "Blue whales are technically whales", "Answer": "True"],
//        ["Question": "Camels are cannibalistic", "Answer": "False"],
//        ["Question": "All ducks are birds", "Answer": "True"]
//    ]
    
    let QuestionData: [[String : AnyObject]] = [
        ["Question": "How do you say 'Hello' in German?,", "Options": ["Hola", "Hallo", "Hei", "Auf wiedersehen"], "Answer": "2"],
        ["Question": "How do you say 'Goodbye' in French?", "Options": ["Hasta luego!", "De rien", "Au revoir", "Guten abend"], "Answer": "3"],
        ["Question": "What is the Spanish word for 'time'?", "Options": ["Tiempo", "Tielo", "Zeit", "Tiemps"], "Answer": "1"],
        ["Question": "What is the Danish word for 'woman'?", "Options": ["Mujer", "Frau", "L'homme", "Kvinde"], "Answer": "4"]
    ]
    
    func getRandomQuestion() -> [String: AnyObject] {
        
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(QuestionData.count)
        return QuestionData[indexOfSelectedQuestion]
    }
    
}
