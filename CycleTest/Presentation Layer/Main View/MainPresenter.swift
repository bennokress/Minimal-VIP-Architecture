//
//  MainPresenter.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

class MainPresenterImplementation {
    
    private unowned var view: MainView
    
    /// This initializer is called when a new MainView is created.
    init(for view: MainView) {
        self.view = view
    }
    
}

// MARK: - MainPresenter Protocol
protocol MainPresenter: class {
    
    /// Updates the view according to the new counter value
    func updateView(with newCounterValue: Int)
    
}

// MARK: - MainPresenter Conformance
extension MainPresenterImplementation: MainPresenter {
    
    func updateView(with newCounterValue: Int) {
        let newLabelText = "Button tapped \(newCounterValue) \(newCounterValue == 1 ? "time" : "times")."
        view.updateCounterLabel(to: newLabelText)
    }
    
}
