//
//  WelcomeViewController.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 14.06.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var catLabel: UILabel!
    @IBOutlet weak var dogLabel: UILabel!
    @IBOutlet weak var rabbitLabel: UILabel!
    @IBOutlet weak var turtleLabel: UILabel!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: - IBAction
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
    }
}

