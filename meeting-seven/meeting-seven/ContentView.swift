//
//  ContentView.swift
//  meeting-seven
//
//  Created by Ayush Sagar on 11/4/25.
//

import SwiftUI

struct ContentView: View {
    @State var words: [String]? = nil
    
    var body: some View {
        List {
            Button("Refresh words") {
                Task {
                    await getWords()
                }
            }
            
            Section {
                if let words = words {
                    ForEach(words, id: \.self) { word in
                        Text(word)
                    }
                }
            }
        }
    }
    
    private func getWords() async {
        do {
            let result = try await WordService.fetchWords()
            words = result
        } catch {
            print(error.localizedDescription)
        }
    }
}

class WordService {
    static func fetchWords() async throws -> [String] {
        let url = URL(string: "https://random-word-api.vercel.app/api?words=10")!
        let (data, _) = try await URLSession.shared.data(from: url)
        var info = try JSONDecoder().decode([String].self,from: data)
        return info
    }
}

#Preview {
    ContentView()
}
