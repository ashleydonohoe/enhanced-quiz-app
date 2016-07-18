//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Pasan Premaratne on 3/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    let trivia = QuestionModel()
    
    var gameSound: SystemSoundID = 0
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var firstAnswerButton: UIButton!
    @IBOutlet weak var secondAnswerButton: UIButton!
    @IBOutlet weak var thirdAnswerButton: UIButton!
    @IBOutlet weak var fourthAnswerButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var nextQuestionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        // Start game
        playGameStartSound()
        displayQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askNextQuestion(sender: UIButton) {
        nextQuestionButton.hidden = true
        displayQuestion()
    }
    
    func displayQuestion() {
        nextQuestionButton.hidden = true
        let questionDictionary: [String: AnyObject] = trivia.getRandomQuestion()
        questionField.text = questionDictionary["Question"] as? String
        let answers = questionDictionary["Options"] as! NSArray
        firstAnswerButton.setTitle(answers[0] as? String, forState: .Normal)
        secondAnswerButton.setTitle(answers[1] as? String, forState: .Normal)
        thirdAnswerButton.setTitle(answers[2] as? String, forState: .Normal)
        fourthAnswerButton.setTitle(answers[3] as? String, forState: .Normal)
        trivia.questionsAsked += 1
        playAgainButton.hidden = true
    }
    
    
    func displayScore() {
        // Hide the answer buttons
        showOrHideAnswerButtons(true)
        
        // Display play again button
        playAgainButton.hidden = false
        
        questionField.text = "Way to go!\nYou got \(trivia.correctQuestions) out of \(trivia.questionsPerRound) correct!"
        
    }
    
    func showOrHideAnswerButtons(shown: Bool) {
        firstAnswerButton.hidden = shown
        secondAnswerButton.hidden = shown
        thirdAnswerButton.hidden = shown
        fourthAnswerButton.hidden = shown
    }
    
    @IBAction func checkAnswer(sender: UIButton) {
        // Increment the questions asked counter
        
        let selectedQuestionDict = trivia.QuestionData[trivia.indexOfSelectedQuestion]
        let correctAnswer = selectedQuestionDict["Answer"] as! String
        print(correctAnswer)
        let answers = selectedQuestionDict["Options"] as! NSArray
        let answerText = answers[Int(correctAnswer)!]
        
        if (sender === firstAnswerButton &&  correctAnswer == "0") || (sender === secondAnswerButton && correctAnswer == "1") || (sender === thirdAnswerButton && correctAnswer == "2" || sender === fourthAnswerButton && correctAnswer == "3") {
            trivia.correctQuestions += 1
            questionField.text = "Correct!"
        } else {
            questionField.text = "Sorry, wrong answer! The correct answer is \(answerText)"
        }
        
        loadNextRoundWithDelay(seconds: 2)
    }
    
    func nextRound() {
        if trivia.questionsAsked == trivia.questionsPerRound {
            // Game is over
            displayScore()
            nextQuestionButton.hidden = true
        } else {
            // Continue game
            if trivia.questionsAsked > 0 {
                nextQuestionButton.hidden = false
            } else {
                displayQuestion()
            }
        }
    }
    
    @IBAction func playAgain() {
        // Show the answer buttons
        showOrHideAnswerButtons(false)
        playAgainButton.hidden = true
        nextQuestionButton.hidden = true
        
        trivia.questionsAsked = 0
        trivia.correctQuestions = 0
        nextRound()
    }
    
    
    
    // MARK: Helper Methods
    
    func loadNextRoundWithDelay(seconds seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, delay)
        
        // Executes the nextRound method at the dispatch time on the main queue
        dispatch_after(dispatchTime, dispatch_get_main_queue()) {
            self.nextRound()
        }
    }
    
    func loadGameStartSound() {
        let pathToSoundFile = NSBundle.mainBundle().pathForResource("GameSound", ofType: "wav")
        let soundURL = NSURL(fileURLWithPath: pathToSoundFile!)
        AudioServicesCreateSystemSoundID(soundURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
}