//
//  FeedOneContentCell.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/09/02.
//

import UIKit
import AVKit
import Kingfisher

class FeedOneContentCell: FeedCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var videoView: UIView!
    
    func setContent(feed: Feed) {
        contentLabel.text = feed.description
        nameLabel.text = feed.userName
        let processor = RoundCornerImageProcessor(cornerRadius: 15)
        profileImage.kf.setImage(with: URL(string: feed.profileThumbnail), placeholder: nil, options: [.processor(processor)])
        let type = feed.contents[0].getType()
        let url = feed.contents[0].url
        videoView.isHidden = type == .Image
        type == .Image ? setImage(url: url) : playVideo(url: url)
    }
    
    private func setImage(url: String) {
        mainImage.kf.setImage(with: URL(string: url))
    }
    
    private func playVideo(url: String) {
        if let url = URL(string: url) {
            let player = AVPlayer(url: url)
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = videoView.bounds
            videoView.layer.addSublayer(playerLayer)
            player.play()
        }
        // TODO 새로고침 버튼 추가
    }
}
