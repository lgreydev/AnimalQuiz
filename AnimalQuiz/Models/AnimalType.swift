//
//  AnimalType.swift
//  AnimalQuiz
//
//  Created by Sergey Lukaschuk on 15.06.2021.
//

import Foundation


enum AnimalType: Character {
    case cat = "🐈‍⬛"
    case dog = "🐕"
    case rabbit = "🐇"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .cat: return TextForAnimals.cat
        case .dog: return TextForAnimals.dog
        case .rabbit: return TextForAnimals.rabbit
        case .turtle: return TextForAnimals.turtle
        }
    }
    
    private struct TextForAnimals {
        static let cat = "You are independent and graceful, you have everything under control."
        static let dog = "You are a good and reliable friend!"
        static let rabbit = "You make decisions quickly, you don't have time for little things."
        static let turtle = "You are in no hurry and do everything on time."
    }
}

