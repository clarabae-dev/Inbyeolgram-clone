//
//  TabBarController.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/08/31.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.barTintColor = .black
        
        let feedController = UIStoryboard(name: "Feed", bundle: nil).instantiateViewController(identifier: "FeedViewController") as! FeedViewController
        feedController.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "outline_home_white_24"), selectedImage: UIImage(named: "baseline_home_white_24"))
        
        let searchController = UIStoryboard(name: "Feed", bundle: nil).instantiateViewController(identifier: "SearchViewController") as! SearchViewController
        searchController.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "outline_search_white_24"), selectedImage: UIImage(named: "baseline_search_white_24"))
        
        self.viewControllers = [feedController, searchController]
    }
}
