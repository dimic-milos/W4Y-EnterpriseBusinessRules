//
//  EneterpriseUser.swift
//  EnterpriseBusinessRules
//
//  Created by Dimic Milos on 12/12/19.
//  Copyright © 2019 Dimic Milos. All rights reserved.
//

import Foundation

public struct EneterpriseUser {
    
    let id: UUID
    private (set) var subscription: Subscription?
    
    init(id: UUID, subscription: Subscription? = nil) {
        self.id = id
        self.subscription = subscription
    }
    
    public var shouldShowAds: Bool {
        if let subscription = subscription {
            switch subscription {
                
            case .trial, .active:
                return false
            case .canceled:
                return true
            }
        } else {
            return true
        }
    }
}

