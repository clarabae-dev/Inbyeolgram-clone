//
//  Coordinator.swift
//  Inbyeolgram-clone
//
//  Created by 배승민 on 2021/08/31.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController {get set}
    func start()
}
