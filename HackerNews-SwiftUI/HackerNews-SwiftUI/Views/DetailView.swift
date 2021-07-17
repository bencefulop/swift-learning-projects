//
//  DetailView.swift
//  HackerNews-SwiftUI
//
//  Created by Bence Fulop on 17/7/21.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Preview {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}

