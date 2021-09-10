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
        
        feeds.append(Feed(idx: 0,
                          profileThumbnail: "https://blog.kakaocdn.net/dn/byrLgk/btq5s5bHu63/fkTQ282tT6BxJLY95N1000/img.jpg",
                          userName: "김유정",
                          description: "선선해지는 가을에 필수로 가봐야하는\n#가을에_가기좋은_종로_한옥카페_추천",
                          contents: [FeedContent(type: "Image", url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzIiKMQJjundNhRhkqo-VwfcUKKIzWlulhpQ&usqp=CAU", tags: [])]))
        feeds.append(Feed(idx: 1,
                          profileThumbnail: "https://www.domin.co.kr/news/photo/201904/1238908_358730_3014.jpg",
                          userName: "박정민",
                          description: "제7회 무주산골영화제",
                          contents: [FeedContent(type: "Video", url: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mov-file.mov", tags: [])]))
        feeds.append(Feed(idx: 2,
                          profileThumbnail: "https://newsimg.sedaily.com/2018/02/27/1RVV97E5E1_1.jpg",
                          userName: "진지희",
                          description: "배우 인생 제 2막, 아역 -> 성인",
                          contents: [FeedContent(type: "Image", url: "https://newsimg.sedaily.com/2018/02/27/1RVV97E5E1_1.jpg", tags: []),
                                     FeedContent(type: "Image", url: "https://images.chosun.com/resizer/DK0j_oi5DJy4SdXSmQljFEhHgBY=/464x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/OJAVH6ADBUYAXIGPTTHRTMBYDQ.jpg", tags: []),
                                     FeedContent(type: "Image", url: "https://blog.kakaocdn.net/dn/bdib2j/btq0zunUyZY/Qh1VLvA2iDi4WtMOSDlxhk/img.jpg", tags: [])]))
        feeds.append(Feed(idx: 3,
                          profileThumbnail: "https://img.insight.co.kr/static/2018/01/04/700/2cc676e6221r62vr7pd3.jpg",
                          userName: "최수영",
                          description: "이제는 당당한 연기자, 배우 느낌 물씬 풍기는 수영의 새 프로필",
                          contents: [FeedContent(type: "Image", url: "https://img.insight.co.kr/static/2018/01/04/700/2cc676e6221r62vr7pd3.jpg", tags: []),
                                     FeedContent(type: "Image", url: "https://newsimg.sedaily.com/2018/08/10/1S3B0TJLWA_1.jpg", tags: []),
                                     FeedContent(type: "Image", url: "https://blog.kakaocdn.net/dn/bCdB4b/btqP0tZxlje/J941H7vRnJnBgk8VQLi24K/img.jpg", tags: [])]))
        feeds.append(Feed(idx: 4,
                          profileThumbnail: "https://img.insight.co.kr/static/2018/01/04/700/2cc676e6221r62vr7pd3.jpg",
                          userName: "최수영",
                          description: "이제는 당당한 연기자, 배우 느낌 물씬 풍기는 수영의 새 프로필",
                          contents: [FeedContent(type: "Image", url: "https://img.insight.co.kr/static/2018/01/04/700/2cc676e6221r62vr7pd3.jpg", tags: []),
                                     FeedContent(type: "Video", url: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mov-file.mov", tags: [])]))
        completion(feeds)
    }
}
