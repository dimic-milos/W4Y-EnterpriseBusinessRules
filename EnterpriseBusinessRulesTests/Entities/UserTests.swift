//
//  UserTests.swift
//  EnterpriseBusinessRulesTests
//
//  Created by Dimic Milos on 12/12/19.
//  Copyright © 2019 Dimic Milos. All rights reserved.
//

import XCTest
@testable import EnterpriseBusinessRules

class UserTests: XCTestCase {

    func test_init_subscriptionIsNil_subscriptionIsSetToNil() {
        // Given
        let uuid =  UUID()
        let subscription: Subscription? = nil
        
        // When
        let sut = User(id: uuid, subscription: subscription)
        
        // Then
        XCTAssertNil(sut.subscription)
    }

    func test_init_subscriptionIsActive_subscriptionIsSetToActive() {
        // Given
        let uuid =  UUID()
        let subscription: Subscription = .active
        
        // When
        let sut = User(id: uuid, subscription: subscription)
        
        // Then
        XCTAssertEqual(subscription, sut.subscription)
    }
    
    func test_shouldShowAds_subscriptionIsNil_returnValueIsTrue() {
        // Given
        let uuid =  UUID()
        let subscription: Subscription? = nil
        
        // When
        let sut = User(id: uuid, subscription: subscription)
        
        // Then
        XCTAssertTrue(sut.shouldShowAds)
    }

    func test_shouldShowAds_subscriptionIsActive_returnValueIsFalse() {
        // Given
        let uuid =  UUID()
        let subscription: Subscription = .active
        
        // When
        let sut = User(id: uuid, subscription: subscription)
        
        // Then
        XCTAssertFalse(sut.shouldShowAds)
    }
    
    func test_shouldShowAds_subscriptionIsCanceled_returnValueIsTrue() {
        // Given
        let uuid =  UUID()
        let subscription: Subscription = .canceled
        
        // When
        let sut = User(id: uuid, subscription: subscription)
        
        // Then
        XCTAssertTrue(sut.shouldShowAds)
    }
}
