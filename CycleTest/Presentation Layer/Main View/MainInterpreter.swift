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
    private var logic: Logic
    
    /// This initializer is called when a new MainView is created.
    init(with presenter: MainPresenter) {
        self.presenter = presenter
        self.logic = BusinessLogicLayerShizzle()
    }
    
}

// MARK: - MainInterpreter Protocol
protocol MainInterpreter: class {
    
    /// Takes the necessary actions when the counter button is tapped
    func counterButtonTapped()
    
}

// MARK: - MainInterpreter Conformance
extension MainInterpreterImplementation: MainInterpreter {
    
    func counterButtonTapped() {
        logic.increaseCounterValue()
        let newCounterValue = logic.getCounterValue()
        presenter.updateView(with: newCounterValue)
    }
    
}
