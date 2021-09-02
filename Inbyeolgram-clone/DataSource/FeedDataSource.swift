//
//  FeedDataSource.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/09/02.
//

import Foundation

struct FeedDataSource {
    func fetchFeeds(completion: @escaping ([Feed]) -> Void) {
        var feeds = [Feed]()
        for i in 1...10 {
            feeds.append(Feed(profileImage: "https://blog.kakaocdn.net/dn/byrLgk/btq5s5bHu63/fkTQ282tT6BxJLY95N1000/img.jpg",
                              name: "김유정\(i)",
                              mainImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzIiKMQJjundNhRhkqo-VwfcUKKIzWlulhpQ&usqp=CAU",
                              contents: "선선해지는 가을에 필수로 가봐야하는\n#가을에_가기좋은_종로_한옥카페_추천"))
        }
        completion(feeds)
    }
}
