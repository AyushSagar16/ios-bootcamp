//
//  ContentView.swift
//  project-one
//
//  Created by Ayush Sagar on 9/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 0;
    private let songLength: Int = 101;
    
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(systemName: "chevron.down").font(.largeTitle)
                Spacer()
                Text("Logic").font(.title2).bold()
                Spacer()
                Image(systemName: "ellipsis").font(.title2)
            }
            Image("no-pressure")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("Perfect").font(.title2).bold()
                        Text("Logic").font(.caption)
                    }
                    Spacer()
                    Image(systemName: "heart").font(.title)
                }
                Slider(
                    value: $sliderValue,
                    in: 0...140,
                    step: 1.0
                ).accentColor(.gray)
                HStack {
                    Text("0:01").font(.caption)
                    Spacer()
                    Text("-1.39").font(.caption)
                }
                HStack {
                    Image(systemName: "shuffle").font(.title2)
                    Spacer()
                    Image(systemName: "backward.end.fill").font(.system(size: 50))
                    Spacer()
                    Image(systemName: "pause.circle.fill").font(.system(size: 75))
                    Spacer()
                    Image(systemName: "forward.end.fill").font(.system(size: 50))
                    Spacer()
                    Image(systemName: "repeat").font(.title2)
                }.padding(.bottom)
                HStack {
                    Image(systemName: "tv.and.hifispeaker.fill")
                    Image(systemName: "square.and.arrow.up")
                    
                }
                
            }
            Spacer()
        }
        .foregroundStyle(.white)
        .padding(.horizontal)
        .background(
            LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

#Preview {
    ContentView()
}
