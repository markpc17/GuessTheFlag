//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mark Carruthers on 26/02/2020.
//  Copyright © 2020 Mark Carruthers. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack(spacing: 30) {
                Text("1")
                    .foregroundColor(.red)
                Text("2")
                    .foregroundColor(.purple)
                Text("3")
                    .foregroundColor(.orange)
            }
            HStack(spacing: 30) {
                Text("4")
                    .foregroundColor(.blue)
                Text("5")
                    .foregroundColor(.pink)
                Text("6")
                    .foregroundColor(.green)
            }
            HStack(spacing: 30) {
                Text("7")
                    .foregroundColor(.yellow)
                Text("8")
                    .foregroundColor(.gray)
                Text("9")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
