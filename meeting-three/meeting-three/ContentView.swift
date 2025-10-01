//
//  ContentView.swift
//  meeting-three
//
//  Created by Ayush Sagar on 9/30/25.
//

import SwiftUI



struct ContentView: View {
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("\(counter)")
            
            Button("Increment Counter") {
                counter += 1
            }
        }
    }
}

struct Practice1: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
            HStack(spacing: 50) {
                Button("-") {
                    count -= 1
                }
                Button("+") {
                    count += 1
                }
            }
        }
        .font(.largeTitle)
    }
}

struct Practice2: View {
    @State private var background = false
    
    var body: some View {
        ZStack {
            if background {
                Color.blue.ignoresSafeArea()
            } else {
                Color.red.ignoresSafeArea()
            }
            VStack {
                Button("Change Color") {
                    background.toggle()
                }
                .padding()
                .background(Color.white)
                .foregroundColor(.black)
                .clipShape(Capsule())
            }
        }
    }
}

struct Practice3: View {
    // TODO: Add missing properties here
    @State private var name: String = ""
    @State private var darkMode: Bool = false

    var body: some View {
        Form {
            Section("Profile") {
                TextField("Enter your name", text: $name)
            }
            Section("Preferences") {
                Toggle("Dark Mode", isOn: $darkMode)
            }
        }
    }
}


struct ParentView: View {
    @State private var isOn = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("The switch is \(isOn ? "ON" : "OFF")")
                .font(.title)
            
            ChildToggleView(isOn: $isOn)
        }
        .padding()
    }
}

struct ChildToggleView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle("Toggle me!", isOn: $isOn)
            .padding()
    }
}



struct CounteyView: View {
    @State private var occupancy: Int = 0
    @State private var maxOccupancy: Int = 0
    
    var body: some View {
            NavigationStack {
                VStack {
                    HStack{
                        Text("\(occupancy) people")
                        Spacer()
                        NavigationLink {
                            SettingsView(maxOccupancy: $maxOccupancy)
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                    Spacer()
                    HStack{
                        Button("-"){
                            occupancy -= 1
                            if (occupancy < 0){
                                occupancy = 0
                            }
                        }
                        Spacer()
                        Button("+") {
                            occupancy += 1
                            if (occupancy > maxOccupancy) {
                                occupancy = maxOccupancy
                            }
                        }
                    }.font(.system(size: 175))
                }.font(.system(size: 50))
            }.padding()
        
    }
}

struct SettingsView: View {
    @Binding var maxOccupancy: Int
    
    var body: some View {
        VStack{
            Stepper("Max occupancy: \(maxOccupancy)", value: $maxOccupancy).padding()
            Spacer()
        }
        
    }
}

#Preview {
    CounteyView()
}
