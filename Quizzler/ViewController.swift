//
//  Question.swift
//  Quizzler
//
//  Created by Владислав on 05/07/2019.
//  Copyright © 2019 Murygin Vladislav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestion = QuestionBank()
    var pickedAnser : Bool = false
    var questionNumber = 0
    var score = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        nextQuestion()
    } 


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1{
            pickedAnser = true
        } else if sender.tag == 2{
            pickedAnser = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    
    }
   
    
    func updateUI(){
        
        progressLabel.text = "\(questionNumber + 1)/\(allQuestion.list.count)"
        scoreLabel.text = "Счёт: \(score)"
        let numberOfQuestions = CGFloat(allQuestion.list.count)
        progressBar.frame.size.width = (view.frame.size.width / numberOfQuestions) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion(){
        if questionNumber <= allQuestion.list.count - 1 {
            questionLabel.text = allQuestion.list[questionNumber].questionText
            updateUI()
        }
        else {
            let alert = UIAlertController(title: "Поздравляю!", message: "Ты ответил правильно на \(score) вопросов. Начать заново?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Перезапуск", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        }
    
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answer
        if correctAnswer == pickedAnser {
            ProgressHUD.showSuccess("Верно!")
            score += 1
        }
        else {
            ProgressHUD.showError("Не верно!")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    
}
