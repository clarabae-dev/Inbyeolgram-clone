//
//  Feed.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/09/02.
//

import Foundation

struct Feed: Hashable {
    let idx: Int
    let profileThumbnail: String
    let userName: String
    let description: String
    let contents: [FeedContent]
    
    static func == (lhs: Feed, rhs: Feed) -> Bool {
        lhs.idx == rhs.idx
    }
}
