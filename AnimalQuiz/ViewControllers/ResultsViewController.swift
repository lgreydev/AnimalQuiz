//
//  ResultsViewController.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 15.06.2021.
//

import UIKit

class ResultsViewController: UIViewController {

    
    var answers: [Answer]?
    
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        updateUI()
    }
    

    
    func updateUI() {
        
        restartButton.isHidden = true
        
        var cat = 0
        var dog = 0
        var rabbit = 0
        var turtle = 0
        
       
        
        answers?.forEach {
            if  $0.type == .cat { cat += 1 }
            if  $0.type == .dog { dog += 1 }
            if  $0.type == .rabbit { rabbit += 1 }
            if  $0.type == .turtle { turtle += 1 }
        }
        
        
//        let animals = [cat, dog, rabbit, turtle]
        
        
        if cat == 3 || cat == 2 { animalLabel.text = "You are cat 🐈‍⬛" } else
        if dog == 3 || dog == 2 { animalLabel.text = "You are dog 🐕" } else
        if rabbit == 3 || rabbit == 2 { animalLabel.text = "You are rabbit 🐇" } else
        if turtle == 3 || turtle == 2 { animalLabel.text = "You are turtle 🐢" } else {
            animalLabel.text = "Try the test again 🤔"
            restartButton.isHidden = false
        }
        
        //if cat <= 1 && dog <= 1 && rabbit <= 1 && turtle <= 1 { animalLabel.text = "Try the test again 🤔" }
        
    }
    

}
