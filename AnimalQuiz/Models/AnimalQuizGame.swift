//
//  AnimalQuizGame.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 25.06.2021.
//

import Foundation


class AnimalQuizGame {
    
    // MARK: - Public Methods
    func score(of answers: [Answer]) -> (String, String, Bool) {
        let animalScore = answers.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        let sortedAnimalScore = animalScore.sorted { $0.value > $1.value }
        return winAnimal(element: sortedAnimalScore)
    }
    
    
    // MARK: - Private Methods
    private func winAnimal(element: [Dictionary<AnimalType, Int>.Element]) -> (String, String, Bool) {
        guard element.first != nil else { fatalError() }
        let firstElement = element.first!
        if firstElement.value == 3 || firstElement.value == 2 {
            let animal = firstElement.key.rawValue
            let definition = firstElement.key.definition
            return (animal, definition, true)
        } else {
            return ("Try the test again 🤔", "", false)
        }
    }
}
