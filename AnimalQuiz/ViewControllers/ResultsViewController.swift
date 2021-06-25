//
//  ResultsViewController.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 15.06.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    
    // MARK: - Properties
    var answers: [Answer]!
    private var game = AnimalQuizGame()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        updateUI()
    }
    
    
    // MARK: - Update View
    private func updateUI() {
        let result  = game.score(of: answers)
        animalLabel.text = result.0
        restartButton.isHidden = result.1
    }
}
