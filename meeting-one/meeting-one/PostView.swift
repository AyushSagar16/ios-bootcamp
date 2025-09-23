//
//  PostView.swift
//  meeting-one
//
//  Created by Ayush Sagar on 9/16/25.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack{
            HStack{
                Image("sunflower").resizable().frame(width: 30, height: 30).clipShape(.circle)
                Text("Sunflower_lover").bold()
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Image("sunflower").resizable().scaledToFit()
            HStack{
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            .padding(8)
            HStack {
                Text("67,420 likes").bold().font(.footnote)
                Spacer()
                
            }.padding(.horizontal, 8)
            HStack {
                Text("Sunflower_lover").bold().font(.footnote)
                Text("I like sunflowers").font(.footnote)
                Spacer()
            }.padding(.horizontal, 8)
            HStack {
                Text("September 16th, 2025").font(.caption).foregroundStyle(.secondary)
                Spacer()
            }.padding(.horizontal, 8)
            
            
        }
    }
}

#Preview {
    PostView()
}
