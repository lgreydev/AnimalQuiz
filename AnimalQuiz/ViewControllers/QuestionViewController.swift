//
//  QuestionViewController.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 15.06.2021.
//

import UIKit

class QuestionViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButton: [UIButton]!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multiLabel: [UILabel]!
    @IBOutlet var multiSwitches: [UISwitch]!
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangeLabel: [UILabel]!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    // MARK: - Properties
    var index = 0
    var answersChosen: [Answer] = []
    var currentAnswers: [Answer] { Question.all[self.index].answers }
    var question: Question { Question.all[self.index] }
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        updateUI()
        
    }
    
    
    // MARK: - Update View
    func updateUI() {
        
        let totalProgress =  Float(index) / Float(Question.all.count)
        
        navigationItem.title = "Question \(index + 1)"
        questionLabel.text = question.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        [singleStackView, multipleStackView, rangedStackView].forEach { $0?.isHidden = true }
        
        switch question.type {
        case .single: updateSingleStack()
        case .multiple: updateMultipleStack()
        case . rage: updateRangedStack()
        }
        
        /// Block Questions 1 - updateUI
        func updateSingleStack() {
            singleStackView.isHidden = false
            for (index, button) in singleButton.enumerated() {
                button.setTitle(nil, for: .normal)
                button.tag = index
            }
            for (button, answer) in zip(singleButton, currentAnswers) {
                button.setTitle(answer.text, for: .normal)
            }
        }
        
        /// Block Questions 2 - updateUI
        func updateMultipleStack() {
            multipleStackView.isHidden = false
            multiLabel.forEach { $0.text = "" }
            for (label, answer) in zip(multiLabel, currentAnswers) {
                label.text = answer.text
            }
        }
        
        /// Block Questions 3 - updateUI
        func updateRangedStack() {
            rangedStackView.isHidden = false
            rangeLabel.first?.text = currentAnswers.first?.text
            rangeLabel.last?.text = currentAnswers.last?.text
        }
    }
    
    func nextQuestion() {
        // TODO: change to segue to result screen
        index = (index + 1) % Question.all.count
        updateUI()
    }
    
    
    // MARK: - IBAction
    @IBAction func singleButtonPressed(_ sender: UIButton) {
        let index = sender.tag
        guard index >= 0 && index < currentAnswers.count else { fatalError() }
        let answer = currentAnswers[index]
        answersChosen.append(answer)
        answersChosen.forEach { print($0.text) } // delete
        nextQuestion()
    }
    
    @IBAction func multiButtonPressed() {
        for (index, multiSwitch) in multiSwitches.enumerated() {
            if multiSwitch.isOn && index < currentAnswers.count {
                let answer = currentAnswers[index]
                answersChosen.append(answer)
            }
        }
        answersChosen.forEach { print($0.text) } // delete
        nextQuestion()
    }
}
