//
//  MainPresenter.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

class MainPresenterImplementation {
    
    private let view: MainView
    
    /// This initializer is called when a new MainView is created.
    init(for view: MainView) {
        self.view = view
    }
    
}

// MARK: - MainPresenter Protocol
protocol MainPresenter {
    
}

// MARK: - MainPresenter Conformance
extension MainPresenterImplementation: MainPresenter {
    
}
