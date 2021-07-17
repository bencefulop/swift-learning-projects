//
//  NetworkManager.swift
//  HackerNews-SwiftUI
//
//  Created by Bence Fulop on 17/7/21.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { [weak self] (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                           let results = try decoder.decode(Results.self, from: data)
                            DispatchQueue.main.async {
                                self?.posts = results.hits                                
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            // This code starts off the netwrking task.
            // The task variable is created on line 14 and here we actually start the networking.
            task.resume()
        }
    }
}
