//
//  QuestionViewController.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 15.06.2021.
//

import UIKit

class QuestionViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var rangedStackView: UIStackView!
    
    
    // MARK: - Properties
    var index = 1
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        updateUI()
        
    }
    
    
    // MARK: - Methods
    func updateUI() {
        navigationItem.title = "Question \(index + 1)"
        
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
        let question = Question.all[index]
        
        switch question.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case . rage:
            rangedStackView.isHidden = false
        }
        
        // TODO: change to segue to result screen
        index = (index + 1) % Question.all.count
    }
}
