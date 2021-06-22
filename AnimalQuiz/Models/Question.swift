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
    
    static let all: [Question] = [
        Question(text: "What food do you like?", type: .single, answers: Self.single.shuffled()),
        Question(text: "What do you like do?", type: .multiple, answers: Self.multiply.shuffled()),
        Question(text: "Do you like car trips?", type: .rage, answers: Self.rage)
    ]
    
    static private let single = [
    Answer(text: "Fish 🐟", type: .cat),
    Answer(text: "Meat 🍖", type: .dog),
    Answer(text: "Carrot 🥕", type: .rabbit),
    Answer(text: "Corn 🌽", type: .turtle)
    ]
    
    static private let multiply = [
    Answer(text: "Sleep 😴", type: .cat),
    Answer(text: "Eat 🍽", type: .dog),
    Answer(text: "Run 🏃‍♀️", type: .rabbit),
    Answer(text: "Swim 🏊‍♂️", type: .turtle)
    ]
    
    static private let rage = [
    Answer(text: "No", type: .cat),
    Answer(text: "I do not care", type: .rabbit),
    Answer(text: "I do not care", type: .turtle),
    Answer(text: "Like", type: .dog)
    ]
}
