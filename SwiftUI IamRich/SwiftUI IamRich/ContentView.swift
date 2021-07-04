//
//  ContentView.swift
//  SwiftUI IamRich
//
//  Created by Bence Fulop on 4/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("I Am Rich")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
