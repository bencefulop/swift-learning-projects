//
//  PostData.swift
//  HackerNews-SwiftUI
//
//  Created by Bence Fulop on 17/7/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String
}
