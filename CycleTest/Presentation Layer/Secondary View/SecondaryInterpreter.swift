//
//  SecondaryInterpreter.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

class SecondaryInterpreterImplementation {
    
    private let presenter: SecondaryPresenter
    
    /// This initializer is called when a new SecondaryView is created.
    init(with presenter: SecondaryPresenter) {
        print("✅ Secondary Interpreter")
        self.presenter = presenter
    }
    
    deinit {
        print("🛑 Secondary Interpreter")
    }
    
}

// MARK: - SecondaryInterpreter Protocol
protocol SecondaryInterpreter: class {
    
    /// Takes the necessary actions when the secondary view is finished loading
    func viewWillAppear(with setupData: ViewSetupData?)
    
    func viewDidAppear()
    
}

// MARK: - SecondaryInterpreter Conformance
extension SecondaryInterpreterImplementation: SecondaryInterpreter {
    
    func viewWillAppear(with setupData: ViewSetupData?) {
        presenter.setup(with: setupData)
    }
    
    func viewDidAppear() {
        presenter.setSecondaryViewVisited()
    }
    
}
