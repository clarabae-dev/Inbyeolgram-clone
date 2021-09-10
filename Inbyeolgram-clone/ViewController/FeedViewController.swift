//
//  FeedViewController.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/08/31.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

class FeedViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private let viewModel = FeedViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "FeedOneContentCell", bundle: nil), forCellReuseIdentifier: "FeedOneContentCell")
        tableView.register(UINib(nibName: "FeedContentsCell", bundle: nil), forCellReuseIdentifier: "FeedContentsCell")
        
        viewModel.feeds.bind(to: tableView.rx.items){(tableView, row, feed) -> UITableViewCell in
            if feed.contents.count == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "FeedOneContentCell") as! FeedOneContentCell
                cell.setContent(feed: feed)
                return cell
            }
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeedContentsCell") as! FeedContentsCell
            cell.setContent(feed: feed)
            return cell
        }.disposed(by: disposeBag)
    }
}
