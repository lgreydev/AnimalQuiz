//
//  AnimalQuizGame.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 25.06.2021.
//

import Foundation


class AnimalQuizGame {
    
    // MARK: - Private Properties
    private var cat = 0
    private var dog = 0
    private var rabbit = 0
    private var turtle = 0
    
    
    // MARK: - Public Methods
    func score(of answers: [Answer]) -> (String, Bool) {
        answers.forEach {
            if  $0.type == .cat { cat += 1 }
            if  $0.type == .dog { dog += 1 }
            if  $0.type == .rabbit { rabbit += 1 }
            if  $0.type == .turtle { turtle += 1 }
        }
        return winAnimal()
    }
    
    
    // MARK: - Private Methods
    private func winAnimal() -> (String, Bool) {
        if cat == 3 || cat == 2 { return ("You are 🐈‍⬛", true) } else
        if dog == 3 || dog == 2 { return ("You are 🐕", true) } else
        if rabbit == 3 || rabbit == 2 { return ("You are 🐇", true) } else
        if turtle == 3 || turtle == 2 { return ("You are 🐢", true) } else {
            return ("Try the test again 🤔", false)
        }
    }
}
