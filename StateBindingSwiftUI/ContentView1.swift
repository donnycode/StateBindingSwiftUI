//
//  ContentView1.swift
//  StateBindingSwiftUI
//
//  Created by don on 1/21/25.
//

import SwiftUI

struct ContentView1: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("\(count)")
                .font(.largeTitle)
            Button("Increment") {
                count += 1
            }
        }
    }
}

#Preview {
    ContentView1()
}
