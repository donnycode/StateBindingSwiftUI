//
//  ContentView3.swift
//  StateBindingSwiftUI
//
//  Created by don on 1/21/25.
//

import SwiftUI

//SwiftUI List
struct ContentView3: View {
    
    @State private var search: String = ""
    @State private var friends = ["John", "Mary", "Steven", "Steve", "Jerry"]
    
    @State private var filteredFriends: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                List(friends, id: \.self) { friend in
                    Text(friend)
                }
                .listStyle(.plain)
                .searchable(text: $search)
                .onChange(of: search) {
                    
                }
                Spacer()
            }
            .padding()
            .onAppear() {
                filteredFriends = friends
            }
        }
    }
}

#Preview {
    ContentView3()
}
