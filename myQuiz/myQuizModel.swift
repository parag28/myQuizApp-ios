//
//  myQuizModel.swift
//  myQuiz
//
//  Created by Parag Kaldate on 2/3/24.
//

import Foundation

// Quiz Model
class Quiz {
    
    var num1: Int?
    var num2: Int?
    
    var answer: String {
        guard let num2 = num2 else { return "Solution" }
        return "\(num1.map { $0 + num2 } ?? 0)"
    }
    

    func generateNewQuiz() -> String{
        num1 = Int.random(in: 0...100)
        num2 = Int.random(in: 0...100)

        return num1.map { "\($0) + \(num2!)" } ?? "Expression"
    }

   

    func showSolution() -> String{
        return answer
    }
}
