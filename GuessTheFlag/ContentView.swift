//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mark Carruthers on 26/02/2020.
//  Copyright © 2020 Mark Carruthers. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        VStack(spacing: 30) {
        VStack {
            Text("Tap the flag of")
                .frame(width: 200)
                .foregroundColor(.white)
            Text(countries[correctAnswer])
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
        ForEach(0..<4) {number in
            Button(action: {
                self.flagTapped(number)
            }) {
                Image(self.countries[number])
                    .renderingMode(.original)
                .clipShape(Capsule())
                    .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                    .shadow(color: .black, radius: 2)
                    }
                }
            Text("Your score is \(score)")
                .foregroundColor(.white)
            Spacer()
            }
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                self.askQuestion()
                })
            }
            
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong, that is the flag of \(countries[number])"
            score -= 1
        }
        
        showingScore = true
        
    }
    
    func askQuestion() {
        countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
