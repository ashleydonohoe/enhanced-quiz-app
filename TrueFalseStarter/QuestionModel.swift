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
        ["Question": "What is the Danish word for 'woman'?", "Options": ["Mujer", "Frau", "L'homme", "Kvinde"], "Answer": "3"],
        ["Question": "What is the Dutch word for 'morning'?", "Options": ["Morn", "Morgen", "Frühling", "Primavera"], "Answer": "1"],
        ["Question": "What is the Italian word for 'bread'?", "Options": ["Pan", "Brot", "Pane", "Leche"], "Answer": "2"],
        ["Question": "What is the Swedish word for 'ball'?", "Options": ["Boll", "Ball", "Ballen", "Pima"], "Answer": "0"],
        ["Question": "What is the Spanish word for 'sorry'?", "Options": ["Scusi", "Sorry", "Tak", "Perdon"], "Answer": "3"],
        ["Question": "What is the German word for 'today'?", "Options": ["Morgen", "Heute", "Hoy", "I Dag"], "Answer": "1"],
        ["Question": "What is the Dutch word for car?", "Options": ["Carro", "Coche", "Auto", "Vagone"], "Answer": "2"],
     
    ]
    
    func getRandomQuestion() -> [String: AnyObject] {
        
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(QuestionData.count)
        return QuestionData[indexOfSelectedQuestion]
    }
    
}
