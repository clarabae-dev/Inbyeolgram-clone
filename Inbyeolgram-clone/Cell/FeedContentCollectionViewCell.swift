//
//  FeedContentCollectionViewCell.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/09/06.
//

import UIKit
import AVKit

class FeedContentCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var videoView: UIView!
    
    func setContent(content: FeedContent) {
        let type = content.getType()
        videoView.isHidden = type == .Image
        type == .Image ? setImage(url: content.url) : playVideo(url: content.url)
    }
    
    private func setImage(url: String) {
        imageView.kf.setImage(with: URL(string: url))
    }
    
    private func playVideo(url: String) {
        if let url = URL(string: url) {
            let player = AVPlayer(url: url)
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = videoView.bounds
            videoView.layer.addSublayer(playerLayer)
            player.play()
        }
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let targetSize = CGSize(width: layoutAttributes.frame.width, height: 0)
        layoutAttributes.frame.size = contentView.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: .required, verticalFittingPriority: .fittingSizeLevel)
        return layoutAttributes
    }
}
