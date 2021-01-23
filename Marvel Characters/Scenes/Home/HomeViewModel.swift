//
//  HomeViewModel.swift
//  Marvel Characters
//
//  Created by Burak Çokyıldırım on 23.01.2021.
//

import UIKit
import RxSwift
import RxCocoa

class HomeViewModel: BaseViewModel {
    
    var coordinator: HomeCoordinator?
    var repository: HomeRepository!
    
    var characters = BehaviorRelay<[Character]>(value: [])
    var errorMessage = BehaviorRelay<String>(value: "")
    
    var offset = 0
    
    func loadData() {
        self.isLoading.accept(true)
        
        repository.fetchData(limit: 30, offset: offset) { (result) in
            self.isLoading.accept(false)
            
            switch result {
            case .success(let data):
                self.offset += data.count
                self.characters.accept(self.characters.value + data)
            case .failure(let error):
                self.errorMessage.accept(error.errorMessage)
            }
        }
    }
    
    func checkDidEnd(_ indexPath: IndexPath) {
        if indexPath.row + 1 == characters.value.count {
            loadData()
        }
    }
    
    func showDetails(to character: Character) {
        coordinator?.showDetail(to: character)
    }
}
