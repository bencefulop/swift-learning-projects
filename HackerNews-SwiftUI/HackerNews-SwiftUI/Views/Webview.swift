//
//  Webview.swift
//  HackerNews-SwiftUI
//
//  Created by Bence Fulop on 17/7/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlSting = urlString {
            if let url = URL(string: safeUrlSting) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
