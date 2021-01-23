//
//  BaseViewModel.swift
//  Marvel Characters
//
//  Created by Burak Çokyıldırım on 22.01.2021.
//

import Foundation
import RxSwift
import RxCocoa

class BaseViewModel {
    
    lazy var disposeBag = DisposeBag()
    
    var isLoading = BehaviorRelay<Bool>(value: false)
    
    required public init() {
        
    }
}
