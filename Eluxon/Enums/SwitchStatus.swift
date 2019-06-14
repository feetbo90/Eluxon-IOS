//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Muhammad Iqbal Pradipta on 10/06/19.
//  Copyright © 2019 Muhammad Iqbal Pradipta. All rights reserved.
//

import Foundation

enum SwitchStatus : Toggleable {
     mutating func Toggle() {
        switch self {
        case .on:
            // do something on
            self = .off
        case .off:
            // do something off
            self = .on
        
        }
    }
    
    case on, off
}
