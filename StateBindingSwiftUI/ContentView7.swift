//
//  ContentView7.swift
//  StateBindingSwiftUI
//
//  Created by don on 1/21/25.
//

import SwiftUI
import Observation


// Environment Object
// Pre iOS 18
// Use Bindable
@Observable
class AppEnvironment1 {
    var isOn: Bool = false
}

struct LightBulbView2: View {
    
    //  @EnvironmentObject private var appEnvironment: AppEnvironment
    
    @Environment(AppEnvironment1.self) private var appEnvironment: AppEnvironment1
    
    var body: some View {
        
        @Bindable var appEnvironment = appEnvironment
        
        VStack {
            Image(systemName: appEnvironment.isOn ? "lightbulb.fill": "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appEnvironment.isOn ? .yellow: .black)
            
            // Button("Toggle") {
            //    appEnvironment.isOn.toggle()
            // }
            Toggle("Toggle", isOn: $appEnvironment.isOn)
                .fixedSize()
            
        }
    }
}

struct LightRoomView1: View {
    
    var body: some View {
        LightBulbView2()
    }
}

struct ContentView7: View {
    
    //  @EnvironmentObject private var appEnvironment: AppEnvironment
    
    @Environment(AppEnvironment1.self) private var appEnvironment: AppEnvironment1
    
    var body: some View {
        VStack {
            // LightBulbView(isOn: $isLightOn) No need Binding
            LightRoomView1()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appEnvironment.isOn ? .black: .white)
    }
}

#Preview {
    ContentView7()
        .environment(AppEnvironment1())
}
