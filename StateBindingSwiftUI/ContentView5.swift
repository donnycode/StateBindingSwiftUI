//
//  ContentView5.swift
//  StateBindingSwiftUI
//
//  Created by don on 1/21/25.
//

import SwiftUI

//  Binding
struct LightBulbView: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isOn ? .yellow : .black)
            Button("Toggle") {
                isOn.toggle()
            }
        }
    }
}


struct ContentView5: View {
    
    @State private var isLightOn = false
    
    var body: some View {
        VStack {
            LightBulbView(isOn: $isLightOn)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isLightOn ? .black : .white)
    }
}

#Preview {
    ContentView5()
}
