//
//  Regex.swift
//  BrowserRouter
//
//  Created by Liang Zhao on 2017/6/30.
//  Copyright © 2017年 Liang Zhao. All rights reserved.
//

import Cocoa

class Regex {
    private let regularExpression: NSRegularExpression
    
    init?(pattern: String) {
        
        if let `regularExpression` = try? NSRegularExpression(pattern: pattern, options: .anchorsMatchLines) {
            self.regularExpression = regularExpression
        } else {
            return nil
        }
    }
    
    func match(_ pattern: String) -> Bool {
        return self.regularExpression.matches(in: pattern, options: .anchored, range: NSRange(location: 0, length: pattern.characters.count)).count > 0
    }
}

