//
//  ContentView4.swift
//  StateBindingSwiftUI
//
//  Created by don on 1/21/25.
//

import SwiftUI

struct ContentView4: View {
    
    @State private var search: String = ""
    @State private var friends = ["John", "Mary", "Steven", "Steve", "Jerry"]
    
    @State private var filteredFriends: [String] = []
    
    var body: some View {
        VStack {
            List(filteredFriends, id:\.self) { friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) {
                if search.isEmpty {
                    filteredFriends = friends
                } else {
                    filteredFriends = friends.filter {
                        $0.lowercased().contains(search.lowercased())
                    }
                }
            }
        }
        .padding()
        .onAppear {
            filteredFriends = friends
        }
        .navigationTitle("Friends")
    }
}

#Preview {
    NavigationStack {
        ContentView4()
    }
}
