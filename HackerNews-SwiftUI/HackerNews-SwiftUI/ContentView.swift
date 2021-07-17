//
//  ContentView.swift
//  HackerNews-SwiftUI
//
//  Created by Bence Fulop on 17/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text("\(post.points)")
                    Text(post.title)
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
