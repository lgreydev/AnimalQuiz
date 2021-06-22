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
//        rotateAnimalLabel()
    }


    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        // Connect a Triggering Object to the Exit Control
    }
    
//    // MARK: - Private Methods
//    func rotateAnimalLabel() {
//        catLabel.transform3D = CATransform3DMakeRotation(180, 0.0, 1.0, 0.0)
//        rabbitLabel.transform3D = CATransform3DMakeRotation(180, 0.0, 0.1, 0.0)
//    }

}

