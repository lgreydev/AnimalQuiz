//
//  Question.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 15.06.2021.
//

import Foundation


struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
    
    static let question: [Question] = [
        Question(text: "What food do you like?", type: .single, answers: Self.single),
        Question(text: "", type: .multiply, answers: Self.multiply),
        Question(text: "", type: .rage, answers: Self.rage)
    ]
    
    
    static private let single = [
    Answer(text: "Fish 🐟", type: .cat),
    Answer(text: "Meat 🍖", type: .dog),
    Answer(text: "Carrot 🥕", type: .rabbit),
    Answer(text: "Corn 🌽", type: .turtle)
    ]
    
    static private let multiply = [
    Answer(text: "", type: .cat),
    Answer(text: "", type: .dog),
    Answer(text: "", type: .rabbit),
    Answer(text: "", type: .turtle)
    ]
    
    static private let rage = [
    Answer(text: "", type: .cat),
    Answer(text: "", type: .dog),
    Answer(text: "", type: .rabbit),
    Answer(text: "", type: .turtle)
    ]
}
