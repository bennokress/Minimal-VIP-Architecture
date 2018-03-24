//
//  MainInterpreter.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

class MainInterpreterImplementation {
    
    private let presenter: MainPresenter
    
    /// This initializer is called when a new MainView is created.
    init(with presenter: MainPresenter) {
        self.presenter = presenter
    }
    
}

// MARK: - MainInterpreter Protocol
protocol MainInterpreter {
    
}

// MARK: - MainInterpreter Conformance
extension MainInterpreterImplementation: MainInterpreter {
    
}
