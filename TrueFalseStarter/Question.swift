//
//  Question.swift
//  TrueFalseStarter
//
//  Created by Gabriele on 7/18/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//


struct Question {
    let question: String
    let options: [String]
    let answer: String
}

let question1 = Question(question: "How do you say 'Hello' in German?", options: ["Hola", "Hallo", "Hei", "Auf wiedersehen"], answer: "1")
let question2 = Question(question: "How do you say 'Goodbye' in French?", options: ["Hasta luego!", "De rien", "Au revoir", "Guten abend"], answer: "2")
let question3 = Question(question: "What is the Spanish word for 'time'?", options: ["Tiempo", "Tielo", "Zeit", "Tiemps"], answer: "0")
let question4 = Question(question: "What is the Danish word for 'woman'?", options: ["Mujer", "Frau", "L'homme", "Kvinde"], answer: "3")

var questions = [question1, question2, question3, question4]