//
//  BusinessLogicLayerShizzle.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

struct BusinessLogicLayerShizzle {
    
    private var counter = 0
    
}

protocol Logic {
    
    /// Increases the counter value by 1
    mutating func increaseCounterValue()
    
    /// Returns the counter value
    func getCounterValue() -> Int
    
}

extension BusinessLogicLayerShizzle: Logic {
    
    mutating func increaseCounterValue() {
        counter += 1
    }
    
    func getCounterValue() -> Int {
        return counter
    }
    
}
