//
//  ContentView.swift
//  project-one
//
//  Created by Ayush Sagar on 9/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 0
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.down")
                Spacer()
                Text("Logic")
                Spacer()
                Image(systemName: "ellipsis")
            }
            Image("no-pressure")
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("Perfect").font(.title2).bold()
                        Text("Logic").font(.caption)
                    }
                    Spacer()
                    Image(systemName: "heart").font(.title)
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
