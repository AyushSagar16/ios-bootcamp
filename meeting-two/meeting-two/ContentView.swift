//
//  ContentView.swift
//  meeting-two
//
//  Created by Ayush Sagar on 9/23/25.
//

import SwiftUI





//
//struct ContentView: View {
//    var body: some View {
//        VStack(spacing: 20) {
//            MovieDetails(name: "Inception", director: "Christopher Nolan", releaseYear: 2010)
//            MovieDetails(name: "The Matrix", director: "The Wachowskis", releaseYear: 1999)
//        }
//        .padding()
//    }
//}

struct MovieDetails: View {
    var name: String
    var director: String
    var releaseYear: Int
    
    var body: some View {
        VStack {
            Text(name)
                .font(.headline)
            Text("Directed by \(director)")
                .font(.subheadline)
            Text("Released in \(String(releaseYear))")
                .font(.caption)
        }
        .padding()
        .background(.green.opacity(0.2))
        .cornerRadius(10)
    }
}

struct ContentView: View {
    var body: some View {
        asdf()
    }
}

struct asdf: View {
    let colorScheme = ["red", "green", "blue", "purple"]
    
    var body: some View {
        ForEach(colorScheme, id: \.self) {
            colorScheme in Text(colorScheme)
        }
    }
}

#Preview {
    ContentView()
}
