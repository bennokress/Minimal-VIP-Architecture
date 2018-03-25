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
protocol MainInterpreter: class {
    
    /// Takes the necessary actions when the main view is finished loading
    func viewWillAppear(with setupData: ViewSetupData?)
    
}

// MARK: - MainInterpreter Conformance
extension MainInterpreterImplementation: MainInterpreter {
    
    func viewWillAppear(with setupData: ViewSetupData?) {
        presenter.setup(with: setupData)
    }
    
}
