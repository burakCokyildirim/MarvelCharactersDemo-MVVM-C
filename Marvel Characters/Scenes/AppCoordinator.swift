//
//  AppCoordinator.swift
//  Marvel Characters
//
//  Created by Burak Çokyıldırım on 23.01.2021.
//

import UIKit
import Foundation

class AppCoordinator: BaseCoordinator {
    func setup(with window: UIWindow?) {
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    override func start() {
        showHome()
    }

    func showHome() {
        removeChildCoordinators()
        let coordinator = HomeCoordinator()
        start(coordinator: coordinator)
    }
}
