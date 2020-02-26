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
        ZStack {
            //Color.red.edgesIgnoringSafeArea(.all)
            //LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            //RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200).edgesIgnoringSafeArea(.all)
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green,.blue, .purple, .red]), center: .center).edgesIgnoringSafeArea(.all)
            Text("Your content")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
