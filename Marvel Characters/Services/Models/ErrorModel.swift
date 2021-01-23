//
//  ErrorModel.swift
//  Marvel Characters
//
//  Created by Burak Çokyıldırım on 23.01.2021.
//

import Foundation

class ErrorModel: Error {
    
    var errorMessage: String
    
    init(errorMessage: String) {
        self.errorMessage = errorMessage
    }
}
