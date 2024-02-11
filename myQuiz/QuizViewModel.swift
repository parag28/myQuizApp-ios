//
//  myQuizAppModel.swift
//  myQuiz
//
//  Created by Parag Kaldate on 2/2/24.
//


import Foundation



// View Model
class QuizViewModel: ObservableObject {
    @Published var expression = "Expression"{
        didSet{
            playButtonText = "Play Again"
            solution = "?"
            playCount += 1
        }
    }
    @Published var solution = "Solution"
    @Published var playButtonText:String = "Play"
    @Published var playCount = 0
    
    var quiz = Quiz()


    func playQuiz() {
        expression = quiz.generateNewQuiz()
    }
    
    func getSolution(){
        solution = quiz.showSolution()
    }
}
