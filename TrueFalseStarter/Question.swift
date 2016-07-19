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
let question5 = Question(question: "What is the Dutch word for 'morning'?", options: ["Morn", "Morgen", "Frühling", "Primavera"], answer: "1")
let question6 = Question(question:  "What is the Italian word for 'bread'?", options: ["Pan", "Brot", "Pane", "Leche"], answer: "2")
let question7 = Question(question: "What is the Swedish word for 'ball'?", options: ["Boll", "Ball", "Ballen", "Pima"], answer: "0")
let question8 = Question(question:  "What is the Spanish word for 'sorry'?", options: ["Scusi", "Sorry", "Tak", "Perdon"], answer: "3")
let question9 = Question(question: "What is the German word for 'today'?", options: ["Morgen", "Heute", "Hoy", "I Dag"], answer: "1")
let question10 = Question(question: "What is the Dutch word for car?", options: ["Carro", "Coche", "Auto", "Vagone"], answer: "2")

var questions = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]