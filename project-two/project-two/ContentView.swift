//
//  ContentView.swift
//  project-two
//
//  Created by Ayush Sagar on 9/30/25.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [.blue, .cyan], startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    var body: some View {
        ZStack{
            backgroundGradient
            VStack{
                Text("Chapel Hill")
                    .font(.system(size: 50))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                HStack(alignment: .firstTextBaseline, spacing: 0){
                    Text("67")
                        .font(.system(size: 100))
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                    Text("°")
                        .font(.system(size: 100))
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                }
                
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
