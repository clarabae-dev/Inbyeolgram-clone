//
//  FeedContentsCell.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/09/06.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

class FeedContentsCell: FeedCell {
    
    @IBOutlet weak var contentsCollectionView: UICollectionView!
    
    let disposeBag = DisposeBag()
    
    func setContent(feed: Feed) {
        contentsCollectionView.register(UINib(nibName: "FeedContentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FeedContentCollectionViewCell")
        contentsCollectionView.delegate = self
        
        contentLabel.text = feed.description
        nameLabel.text = feed.userName
        let processor = RoundCornerImageProcessor(cornerRadius: 15)
        profileImage.kf.setImage(with: URL(string: feed.profileThumbnail), placeholder: nil, options: [.processor(processor)])
        
        let contents = Observable.just(feed.contents)
        contents.bind(to: contentsCollectionView.rx.items(cellIdentifier: "FeedContentCollectionViewCell", cellType: FeedContentCollectionViewCell.self)) { row, content, cell  in
            cell.setContent(content: content)
        }.disposed(by: disposeBag)
        
    }
}

extension FeedContentsCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }

}
