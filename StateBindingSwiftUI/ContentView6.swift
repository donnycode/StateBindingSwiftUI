//
//  ContentView6.swift
//  StateBindingSwiftUI
//
//  Created by don on 1/21/25.
//

import SwiftUI

// Environment Object
// Pre iOS 17
class AppEnvironment: ObservableObject {
    @Published var isOn: Bool = false
}

struct LightBulbView1: View {
    
    // @Binding var isOn: Bool No Need Binding
    
    @EnvironmentObject private var appEnvironment: AppEnvironment
    
    var body: some View {
        VStack {
            Image(systemName: appEnvironment.isOn ? "lightbulb.fill": "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appEnvironment.isOn ? .yellow: .black)
            Button("Toggle") {
                appEnvironment.isOn.toggle()
            }
        }
    }
}

struct LightRoomView: View {
    
    var body: some View {
        LightBulbView1()
    }
}


struct ContentView6: View {
    
    @EnvironmentObject private var appEnvironment: AppEnvironment
    
    var body: some View {
        VStack {
            // LightBulbView(isOn: $isLightOn) No need Binding
            LightRoomView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appEnvironment.isOn ? .black: .white)
    }
}

#Preview {
    ContentView6()
        .environmentObject(AppEnvironment())
}
