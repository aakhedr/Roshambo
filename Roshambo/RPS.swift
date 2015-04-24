//
//  RPS.swift
//  Roshambo
//
//  Created by Ahmed Khedr on 4/24/15.
//  Copyright (c) 2015 Ahmed Khedr. All rights reserved.
//

import Foundation


// The model 
enum Shape: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    static func randomShape() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomIndex = Int(arc4random_uniform(3))
        return Shape(rawValue: shapes[randomIndex])!
    }
}
