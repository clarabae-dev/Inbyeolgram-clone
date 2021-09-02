//
//  FeedViewModel.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/09/02.
//

import Foundation
import RxSwift
import RxCocoa

class FeedViewModel {
    private let datasource = FeedDataSource()
    let feeds = BehaviorRelay<[Feed]>(value: [])
    
    init() {
        datasource.fetchFeeds() { feeds in
            debugPrint(feeds)
            self.feeds.accept(feeds)
        }
    }
}
