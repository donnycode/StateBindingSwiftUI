//
//  ContentView2.swift
//  StateBindingSwiftUI
//
//  Created by don on 1/21/25.
//

import SwiftUI

struct ContentView2: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "On" : "Off")
                    .foregroundStyle(.white)
            }).fixedSize()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(isOn ? .yellow : .black)
    }
}

#Preview {
    ContentView2()
}
