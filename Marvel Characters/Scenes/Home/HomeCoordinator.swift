//
//  HomeCoordinator.swift
//  Marvel Characters
//
//  Created by Burak Çokyıldırım on 23.01.2021.
//

import UIKit

class HomeCoordinator: BaseCoordinator {
    
    fileprivate lazy var homeViewModel: HomeViewModel = {
        let vm = HomeViewModel()
        vm.coordinator = self
        vm.repository = HomeRepository()
        return vm
    }()
    
    fileprivate lazy var detailViewModel: DetailViewModel = {
        let vm = DetailViewModel()
        vm.coordinator = self
        return vm
    }()
    
    override func start() {
        let homeVC: HomeViewController = UIStoryboard.Main.instantiateViewController()
        homeVC.viewModel = homeViewModel
        navigationController.setViewControllers([homeVC], animated: false)
    }
}

extension HomeCoordinator {
    
    func showDetail(to character: Character) {
        let detailVC: DetailViewController = UIStoryboard.Main.instantiateViewController()
        detailVC.viewModel = detailViewModel
        navigationController.pushViewController(detailVC, animated: true)
    }
}
