//
//  ViewSetupData.swift
//  CycleTest
//
//  Created by Benno Kress on 25.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

enum ViewSetupData {
    
    case main(alreadyVisitedSecondary: Bool)
    case secondary(visitCount: Int)
    
}
