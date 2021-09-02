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
        
        tableView.register(UINib(nibName: "FeedOneImageCell", bundle: nil), forCellReuseIdentifier: "FeedOneImageCell")
        
        viewModel.feeds.bind(to: tableView.rx.items(cellIdentifier: "FeedOneImageCell", cellType: FeedOneImageCell.self)) { row, feed, cell in
            cell.profileImage?.kf.setImage(with: URL(string: feed.profileImage))
            cell.nameLabel?.text = feed.name
            cell.mainImage.kf.setImage(with: URL(string: feed.mainImage))
            cell.contentLabel?.text = feed.contents
        }.disposed(by: disposeBag)
            
    }
}
