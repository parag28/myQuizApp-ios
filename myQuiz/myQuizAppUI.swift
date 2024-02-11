//
//  ContentView.swift
//  myQuiz
//
//  Created by Parag Kaldate on 2/2/24.
//

import SwiftUI

struct myQuizAppUI: View {
    @ObservedObject var viewModel = QuizViewModel()
    @State var solution:String = "Solution"
    
    var body: some View {
        
        ZStack(alignment: .top){
            
            Color(.raisinBlack)
                .ignoresSafeArea(.all)
            
            HStack(){
                Spacer()
                Text("My Quiz App")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .padding()
                    .foregroundColor(.white)
                Spacer()
            }
            
            VStack {
                Divider().colorInvert()
                LinearGradient(colors: [.lavender, .blue], startPoint: .leading, endPoint: .trailing).mask{
                    HStack{
                    
                        Group{
                            Text(viewModel.expression)
                            Text("=")
                            Text(viewModel.solution)
                        }.font(.system(size: 25, weight: .medium, design: .default))
                    }
                }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Divider().colorInvert()
                
                Divider();
                HStack{
                    
                    Text("Count: \(viewModel.playCount)")
                        .foregroundColor(.mustard)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 15)
                        .overlay(RoundedRectangle(cornerRadius: 3)
                        .stroke(.mustard, lineWidth: 2))
                        .font(.system(size: 13, weight: .heavy))
                        
                    
                    Button(viewModel.playButtonText) {
                        withAnimation(.easeIn){
                            viewModel.playQuiz()
                        }
                    }.font(.system(size: 20, weight: .semibold, design: .default))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(.mustard)
                        .foregroundColor(.raisinBlack)
                        .cornerRadius(10)
                    
                    Button("Solve") {
                        viewModel.getSolution()
                    }.font(.system(size: 20, weight: .semibold, design: .default))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(.mustard)
                        .foregroundColor(.raisinBlack)
                        .cornerRadius(10)
                    
                    
                    
                }
                .padding(.vertical)
                
                Divider().padding(.bottom)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
    }
}


#Preview {
    myQuizAppUI()
}

