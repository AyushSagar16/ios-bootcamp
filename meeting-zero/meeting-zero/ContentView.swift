//
//  ContentView.swift
//  meeting-zero
//
//  Created by Ayush Sagar on 9/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Text("Top left")
                Spacer()
                Text("Top right")
            }
            Color
                .blue
                .aspectRatio(1, contentMode: .fit)
            
            HStack {
                Text("Left")
                Text("Right")
            }
            Text("Hello there! My name is jeff, and I want to be a space pirate.")
            
        }
    }
}

#Preview {
    ContentView()
}
