//
//  AnimalQuizGame.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 25.06.2021.
//

import Foundation


class AnimalQuizGame {
    
    // MARK: - Public Methods
    func score(of answers: [Answer]) -> (String, Bool) {
        let animalScore = answers.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        return winAnimal(score: animalScore)
    }
    
    
    // MARK: - Private Methods
    private func winAnimal(score: [AnimalType : Int]) -> (String, Bool) {
        if score[.cat] == 3 || score[.cat] == 2 { return ("You are 🐈‍⬛", true) } else
        if score[.dog] == 3 || score[.dog] == 2 { return ("You are 🐕", true) } else
        if score[.rabbit] == 3 || score[.rabbit] == 2 { return ("You are 🐇", true) } else
        if score[.turtle] == 3 || score[.turtle] == 2 { return ("You are 🐢", true) } else {
            return ("Try the test again 🤔", false)
        }
    }
}
