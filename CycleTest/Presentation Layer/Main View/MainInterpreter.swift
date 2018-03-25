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
        print("✅ Main Interpreter")
        self.presenter = presenter
        self.logic = BusinessLogicLayerShizzle()
    }
    
    deinit {
        print("🛑 Main Interpreter")
    }
    
}

// MARK: - MainInterpreter Protocol
protocol MainInterpreter: class {
    
    /// Takes the necessary actions when the main view is finished loading
    func viewWillAppear(with setupData: ViewSetupData?)
    
    /// Takes the necessary actions when the switch view button is tapped
    func switchViewButtonTapped()
    
}

// MARK: - MainInterpreter Conformance
extension MainInterpreterImplementation: MainInterpreter {
    
    func viewWillAppear(with setupData: ViewSetupData?) {
        presenter.setup(with: setupData)
    }
    
    func switchViewButtonTapped() {
        logic.increaseCounterValue()
        let counterValue = logic.getCounterValue()
        presenter.goToSecondaryViewWithData(counter: counterValue)
    }
    
}

