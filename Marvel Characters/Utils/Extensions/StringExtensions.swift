//
//  StringExtension.swift
//  Marvel Characters
//
//  Created by Burak Çokyıldırım on 22.01.2021.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
