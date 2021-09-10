//
//  FeedContent.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/09/06.
//

import Foundation

struct FeedContent: Hashable {
    private(set) var type: String
    private(set) var url: String
    private(set) var tags: [String]
    
    enum CodingKeys: String, CodingKey {
        case type
        case url
        case tags = "tag_list"
    }
    
    init(type: String, url: String, tags: [String]) {
        self.type = type
        self.url = url
        self.tags = tags
    }
    
    func getType() -> FeedType {
        FeedType(rawValue: type) ?? .Image
    }
}

enum FeedType: String {
    case Image
    case Video
}
