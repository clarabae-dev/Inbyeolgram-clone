//
//  AppCoordinator.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/08/31.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinator: [Coordinator] = []
    
    var isLoggedIn: Bool = true // TODO 로그인 여부 처리
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.setNavigationBarHidden(true, animated: true)
    }
    
    func start() {
        isLoggedIn ? showTabFlow() : showLoginFlow()
    }
    
    private func showLoginFlow() {}
    
    private func showTabFlow() {
        let tabController = TabBarController()
        navigationController.setViewControllers([tabController], animated: true)
    }
}
