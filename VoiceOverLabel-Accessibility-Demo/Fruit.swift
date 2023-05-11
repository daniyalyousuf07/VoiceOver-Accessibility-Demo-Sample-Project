//
//  Fruits.swift
//  VoiceOverLabel-Accessibility-Demo
//
//  Created by Daniyal Yousuf on 2023-05-11.
//

import Foundation

import Foundation

struct Fruit {
    let emoji: String
    let name: String
    let rating: Int
    
    var score: String {
        return String(repeating: "⭐️", count: rating)
    }
}
